import functools

class FSM(object):
    def __init__(self, instructions):
        self.__instructions = dict([Instruction(x).to_key_value() for x in instructions.splitlines()])

    def run_fsm(self, start, sequence):
        ins = self.__instructions
        state_chain = functools.reduce(lambda a, x: a + [ins[a[-1].move(x)]], sequence, [ins[start]])
        final_state = state_chain[-1]
        path = list(map(lambda x: x.state(), state_chain))
        return (final_state.state(), final_state.output(), path)

class Instruction:
    def __init__(self, instruction):
        state, signal, output = [x.strip() for x in instruction.split(';')]
        self.__state = state
        self.__signal = [x.strip() for x in signal.split(',')]
        self.__output = int(output)

    def state(self):
        return self.__state

    def move(self, command):
        return self.__signal[command]

    def output(self):
        return self.__output

    def to_key_value(self):
        return [self.state(), self]


def test_case():
    instructions = \
    '''S1; S1, S2; 9
    S2; S1, S3; 10
    S3; S4, S3; 8
    S4; S4, S1; 0'''

    start = 'S1'
    sequence = [0, 1, 1, 0, 1]

    fsm = FSM(instructions)
    ret = fsm.run_fsm(start, sequence)
    print(ret)

test_case()
