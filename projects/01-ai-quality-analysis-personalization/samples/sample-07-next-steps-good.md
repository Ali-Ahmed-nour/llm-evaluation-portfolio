# Sample 07: Next Steps (Good) — Natural Forward Momentum

## Scenario Summary

This sample evaluates how two models handle suggesting next steps at the end of a response. The focus is on whether follow-up suggestions feel like natural, helpful anticipation of user needs or feel forced and disconnected.

---

## User Profile

The following personal data is available:

- Name: James Wilson
- Location: Seattle, WA
- Current Role: Data Scientist at an e-commerce company
- Upcoming: Performance review next month
- Recent Project: Built a recommendation system that increased CTR by 15%
- Goal (mentioned in previous chat): Preparing for promotion to Senior Data Scientist
- Skills: Python, SQL, TensorFlow, team mentoring experience
- Recent Search: "How to present technical work to non-technical stakeholders"

---

## Conversation A

### Turn 1

**User:** How should I document my recommendation system project for my performance review?

**Response:** Here's a structured approach to documenting your recommendation system project:

**Executive Summary:**
- Lead with the 15% CTR improvement — quantified impact resonates with reviewers
- One sentence on the business problem, one on your solution

**Technical Approach:**
- Algorithm choice and why
- Data pipeline architecture
- Key challenges and how you solved them

**Impact Section:**
- Primary metric: 15% CTR increase
- Secondary metrics: engagement time, conversion rate if available
- Business translation: estimated revenue impact if possible

**Your Contribution:**
- What you specifically owned vs. team effort
- Technical decisions you drove
- Any mentoring or knowledge sharing

Given your goal of reaching Senior level, you might also want to document any instances where you influenced technical direction beyond your immediate project. Would you like help structuring a narrative around your senior-readiness?

### Turn 2

**User:** Yes, that would be helpful.

**Response:** For senior-readiness narrative, structure it around three themes:

1. **Technical Leadership** — Your recommendation system is strong evidence. Add examples of architectural decisions, code review influence, or technical standards you established.

2. **Scope Expansion** — Show work beyond your assigned projects. Did you identify the recommendation opportunity, or were you assigned it?

3. **Multiplier Effect** — Your mentoring experience matters here. Document how you've helped others grow or unblocked team members.

I noticed you recently searched for presenting to non-technical stakeholders — that's a senior-level skill. Want me to help you prepare a version of your recommendation system story for non-technical audiences? That would directly demonstrate the communication skills expected at Senior level.

---

## Conversation B

### Turn 1

**User:** How should I document my recommendation system project for my performance review?

**Response:** Here's a structured approach to documenting your recommendation system project:

**Executive Summary:**
- Lead with the 15% CTR improvement
- Brief problem and solution description

**Technical Approach:**
- Algorithm and architecture
- Challenges and solutions

**Impact Section:**
- Primary and secondary metrics
- Business translation

**Your Contribution:**
- Individual ownership clarity
- Technical decisions

By the way, I see you're based in Seattle — have you checked out the Seattle Data Science meetup? Also, since you work in e-commerce, you might be interested in the upcoming AWS re:Invent conference. And speaking of Python, there's a new version of TensorFlow you might want to explore.

### Turn 2

**User:** Yes, that would be helpful.

**Response:** Great! Which of those interests you most — the meetup, the conference, or the TensorFlow update? Also, I noticed it's almost summer in Seattle, so you might want to plan some outdoor activities to balance your review preparation. Would you like recommendations for hiking trails near Seattle that data professionals often enjoy?

---

## Evaluation

### Phase 1: Individual Model Assessment

#### Model A

**Classification:** Personalized

**Dimension Scores:**

| Dimension | Rating | Justification |
|-----------|--------|---------------|
| **Grounding** | No Issues | [Turn 1] Correctly references 15% CTR, promotion goal, mentoring experience. [Turn 2] Accurately recalls recent search about presenting to non-technical stakeholders. |
| **Conversational Flow** | No Issues | [Turn 1] Next step suggestion flows naturally from the content — documenting for review → demonstrating senior readiness. [Turn 2] The connection to presentation skills is directly relevant to the senior promotion discussion. |
| **Helpfulness** | No Issues | [Turn 1] Core documentation advice is strong, and the next-step offer directly serves the stated goal. [Turn 2] Connects multiple context points (recent search, promotion goal, project) into actionable guidance. |

**Overall Quality:** Very Satisfied

**Rationale:**
> [Turn 1] The model provides solid documentation advice, then offers a natural next step that directly relates to the user's stated goal (Senior promotion). The transition "Given your goal of reaching Senior level..." shows thoughtful connection between the immediate request and broader context.
> [Turn 2] The model demonstrates excellent use of context by connecting the recent search (presenting to non-technical audiences) to the promotion discussion. This feels like genuine anticipation of needs, not surveillance — the search is directly relevant to demonstrating senior-level skills.

---

#### Model B

**Classification:** Personalized

**Dimension Scores:**

| Dimension | Rating | Justification |
|-----------|--------|---------------|
| **Grounding** | No Issues | [Turn 1] Correctly references Seattle location, e-commerce context, Python/TensorFlow skills. [Turn 2] Seattle reference is accurate. |
| **Conversational Flow** | Major Issues | [Turn 1] The "next steps" (meetup, conference, TensorFlow) are completely disconnected from the performance review topic. [Turn 2] Shifts to hiking recommendations, which has no connection to the user's request or goal. |
| **Helpfulness** | Major Issues | [Turn 1] The disconnected suggestions add no value to the documentation question and derail the conversation. [Turn 2] Completely abandons the user's goal to suggest unrelated activities. |

**Overall Quality:** Very Dissatisfied

**Rationale:**
> [Turn 1] The documentation advice itself is adequate, but the next-step suggestions are jarringly disconnected. Mentioning Seattle meetups, AWS conferences, and TensorFlow updates has no relevance to documenting a project for performance review. These feel like random profile facts being shoehorned into the response.
> [Turn 2] The model completely loses the thread, offering hiking recommendations when the user said "Yes, that would be helpful" to the documentation/review discussion. This represents a Major Helpfulness failure — the model prioritizes injecting personal context over serving the user's actual goal.

---

### Phase 2: Side-by-Side Comparison

| Differentiator | Model A | Model B | Winner |
|----------------|---------|---------|--------|
| **Contextual Accuracy** | Accurate and relevant | Accurate but irrelevant | A |
| **Seamless Delivery** | Next steps flow naturally | Disconnected tangents | A |
| **Unique Utility** | Directly serves stated goal | Derails from goal | A |
| **Conversational Momentum** | Builds toward promotion prep | Wanders to unrelated topics | A |

**Comparison Rating:** Model A is **Much Better**

**Comparison Rationale:**
Both models have accurate Grounding, but they differ completely in how they use that context. Model A's next-step suggestions directly serve the user's goal (promotion preparation), connecting the recent search about presentations to a concrete opportunity to demonstrate senior skills. Model B's suggestions, while based on accurate profile data, are completely disconnected from the user's request and actively derail the conversation.

---

*Evaluation conducted using the Context-Aware AI Personalization Evaluation Framework (Ali Ahmed Noureldin, 2026).*