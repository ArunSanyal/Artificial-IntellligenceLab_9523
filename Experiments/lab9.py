class ExpertSystem:
    def __init__(self):
        self.knowledge_base = {}  # Factual and heuristic knowledge
        self.inference_engine = InferenceEngine()

    def add_rule(self, rule):
        # Add rule to the knowledge base
        self.knowledge_base[rule.condition] = rule.conclusion

    def acquire_knowledge(self, expert):
        # Acquire knowledge from an expert
        self.knowledge_base.update(expert.provide_knowledge())

    def consult_expert(self, query):
        # Consult the expert system for a query
        return self.inference_engine.query(self.knowledge_base, query)


class InferenceEngine:
    def query(self, knowledge_base, query):
        # Use forward chaining to deduce the answer
        if query in knowledge_base:
            return knowledge_base[query]
        else:
            return "Cannot determine."


class Expert:
    def provide_knowledge(self):
        # Provide factual and heuristic knowledge
        return {
            "IF condition THEN conclusion": "Heuristic knowledge"
        }


# Define the Rule class
class Rule:
    def __init__(self, condition, conclusion):
        self.condition = condition
        self.conclusion = conclusion

# Your ExpertSystem and other classes go here

# Example usage:
def main():
    # Create an expert system
    expert_system = ExpertSystem()

    # Create an expert and acquire knowledge
    expert = Expert()
    expert_system.acquire_knowledge(expert)

    # Add rules to the knowledge base
    expert_system.add_rule(Rule("sunny", "happy"))
    expert_system.add_rule(Rule("rainy", "sad"))

    # Consult the expert system
    print(expert_system.consult_expert("sunny"))
    print(expert_system.consult_expert("rainy"))

if __name__ == "__main__":
    main()


# happy
# sad
