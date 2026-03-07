# References

Sources cited or referenced in the slide deck, organized by topic.

## Context Constraints (S12)

### Recall Degradation

| Ref | Citation | Key Finding | Slide Point |
|-----|----------|-------------|-------------|
| [1] | Liu et al. "Lost in the Middle: How Language Models Use Long Contexts." *TACL*, 2024. | Models exhibit U-shaped recall: best at beginning/end, **>30% drop** in the middle of long contexts. | Recall 成功率下降 |
| [2] | Li et al. "Hidden in the Haystack: Smaller Needles are More Difficult for LLMs to Find." *arXiv:2505.18148*, 2025. | Smaller gold contexts consistently degrade recall and amplify positional sensitivity; standard NIAH benchmarks **underestimate** real-world difficulty. | Recall 成功率下降 |
| [3] | Levy et al. "Context Length Alone Hurts LLM Reasoning Capability." *Findings of EMNLP*, 2025. | Extending input length **alone** substantially degrades reasoning, even when the model can still retrieve relevant evidence. | 注意力涣散 / Recall 下降 |

### Attention Dilution & Context Rot

| Ref | Citation | Key Finding | Slide Point |
|-----|----------|-------------|-------------|
| [4] | Chroma Research. "Context Rot: How Increasing Input Tokens Impacts LLM Performance." 2025. | Introduces "attention budget" concept: every added token depletes the budget, degrading reasoning on what matters. | 注意力涣散 |
| [5] | Anthropic Engineering. "Effective Context Engineering for AI Agents." 2025. | "Stuffing 100K tokens of history degrades the model's ability to reason about what actually matters." Advocates finding the **smallest high-signal token set**. | 注意力涣散 / 上下文工程总论 |

### Inference Cost Scaling

| Ref | Citation | Key Finding | Slide Point |
|-----|----------|-------------|-------------|
| [6] | a16z. "LLMflation - LLM Inference Cost Is Going Down Fast." 2025. | GPT-4 equivalent cost dropped from $20 to $0.40/M tokens (2022→2025), but **longer context still scales quadratically** in attention compute. | 推理成本飙升 |
| [7] | Ye et al. "TokenSelect: Efficient Long-Context Inference and Length Generalization." *EMNLP*, 2025. | 128K context costs ~64x more than 8K; KV cache memory grows linearly with prompt length, dominating memory at long contexts. | 推理成本飙升 |
| [8] | Meta Engineering. "Scaling LLM Inference: Innovations in Tensor Parallelism, Context Parallelism, and Expert Parallelism." 2025. | Prefill stage is compute-bound due to quadratic attention scaling; decoding stage is memory-bound by KV cache. | 推理成本飙升 |

## Context Engineering Practices (S14)

| Ref | Citation | Key Finding | Slide Point |
|-----|----------|-------------|-------------|
| [5] | Anthropic Engineering. "Effective Context Engineering for AI Agents." 2025. | Context engineering = curating optimal token set during inference. System prompts should be clear, direct, at the right altitude. | 上下文工程方法论 |
| [9] | Anthropic Engineering. "Effective Harnesses for Long-Running Agents." 2025. | Long-running agents need status files + project history for fresh context windows; compaction enables sustained work without exhausting context. | 跨 Session 连续性 |

## URLs

1. https://direct.mit.edu/tacl/article/doi/10.1162/tacl_a_00638/119630
2. https://arxiv.org/abs/2505.18148
3. https://aclanthology.org/2025.findings-emnlp.1264.pdf
4. https://research.trychroma.com/context-rot
5. https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents
6. https://a16z.com/llmflation-llm-inference-cost/
7. https://aclanthology.org/2025.emnlp-main.1079.pdf
8. https://engineering.fb.com/2025/10/17/ai-research/scaling-llm-inference-innovations-tensor-parallelism-context-parallelism-expert-parallelism/
9. https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents
