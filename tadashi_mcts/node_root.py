import tadashi_mcts.node_node
from tadashi_mcts.logger import TimestampedJsonLogger


class MCTSNode_Root(tadashi_mcts.node_node.MCTSNode_Node):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.logger = TimestampedJsonLogger(self.app.source.name)
        self.logger.log(1, [], self.app.source.name)
        self.speedup = 1
