# Sample 01: Incorrect Personalization — Career Transition Prompt

## Scenario Summary

This sample evaluates how two models respond when Ali asks for career advice about transitioning into AI Safety roles. The focus is on whether the models accurately reference his background or introduce factual errors about his education and experience.

---

## User Profile

The following personal data is available:

- Name: Ali Ahmed Noureldin
- Location: Cairo, Egypt
- Current Role: AI Quality Analyst / RLHF & Personalization Evaluator at Outlier AI
- Education: Master's in Computer Science (ML focus) at Suez University (Ongoing)
- Pre-Master: Ranked 1st (2024-2025)
- Bachelor's: Computer Science from New Cairo Academy (2010-2014), Ranked 1st all 4 years
- Previous Experience: Founder & Operations Lead at Carnova (2011-2024), Team Leader at Digital Egypt Pioneers Program
- Research Interest: Integrating DDD and Hexagonal Architecture with ML systems
- Languages: English (C1), Arabic (Native)

---

## Conversation A

### Turn 1

**User:** I'm looking to transition deeper into AI safety and alignment research. What steps should I take given my background?

**Response:** Great goal, Ali. Looking at your background, I can see you have a solid foundation to build on. You completed your Bachelor's degree in Computer Science from Suez University, and you're currently pursuing a Master's with an ML focus. Your experience as a Data Analyst at Carnova gives you practical skills that translate well to AI evaluation work.

Here's what I'd recommend:

1. **Build on your RLHF experience** — Your current work at Outlier gives you direct exposure to evaluation methods.
2. **Publish your research** — Your interest in combining DDD with ML is unique and could attract attention.
3. **Apply to fellowship programs** — MATS or SERI MATS would value your analytical background.
4. **Engage with the community** — Start writing about your evaluation insights on the Alignment Forum.

Would you like me to prioritize these by timeline?

### Turn 2

**User:** Which path would leverage my academic ranking the most?

**Response:** Given that you graduated top of your class from Suez University, fellowship programs like MATS would definitely take notice. Academic excellence matters in competitive research programs. Your ranking shows you can handle rigorous material, which is exactly what they look for.

---

## Conversation B

### Turn 1

**User:** I'm looking to transition deeper into AI safety and alignment research. What steps should I take given my background?

**Response:** That's an exciting direction. Based on your profile, you're well-positioned for this transition. Your Bachelor's from New Cairo Academy and your current Master's work at Suez University show strong academic continuity. The fact that you ranked 1st throughout your undergraduate years and again in your Pre-Master demonstrates consistent analytical capability.

Here's a tailored approach:

1. **Leverage your RLHF evaluation experience** — Your work at Outlier directly applies to alignment research.
2. **Connect your research interests** — DDD and Hexagonal Architecture principles could offer fresh perspectives on AI system design.
3. **Target fellowship programs** — Your academic record makes you competitive for MATS or similar programs.
4. **Build public artifacts** — Document your evaluation methodology as portfolio pieces.

Your entrepreneurial background at Carnova also signals execution ability, which research teams value.

### Turn 2

**User:** Which path would leverage my academic ranking the most?

**Response:** Your 1st-place ranking at New Cairo Academy across all four years, combined with your Pre-Master ranking at Suez University, creates a strong narrative for fellowship applications. Programs like MATS specifically look for candidates who demonstrate sustained excellence. I'd recommend highlighting both achievements — the consistency over time matters more than any single ranking.

---

## Evaluation

### Phase 1: Individual Model Assessment

#### Model A

**Classification:** Personalized

**Dimension Scores:**

| Dimension | Rating | Justification |
|-----------|--------|---------------|
| **Grounding** | Major Issues | [Turn 1] The model incorrectly states Ali's Bachelor's is from "Suez University" when it's actually from New Cairo Academy. It also mischaracterizes his role at Carnova as "Data Analyst" when he was "Founder & Operations Lead." [Turn 2] Repeats the incorrect university attribution. |
| **Conversational Flow** | Minor Issues | [Turn 1] The opening "Looking at your background" is slightly mechanical but doesn't derail the response. Overall delivery is conversational. |
| **Helpfulness** | Minor Issues | [Turn 1] The recommendations are relevant and actionable, but their value is undermined by the factual errors which could lead Ali to misrepresent himself in applications. |

**Overall Quality:** Somewhat Dissatisfied

**Rationale:**
> [Turn 1] The model attempts personalization but introduces two significant factual errors: misattributing the Bachelor's degree to Suez University instead of New Cairo Academy, and incorrectly describing the Carnova role as "Data Analyst" rather than "Founder & Operations Lead." These errors represent Major Grounding issues that undermine trust in the response.
> [Turn 2] The model compounds the error by again referencing "Suez University" for the undergraduate degree. While the advice about fellowships is reasonable, the incorrect foundation makes the personalization counterproductive.

---

#### Model B

**Classification:** Personalized

**Dimension Scores:**

| Dimension | Rating | Justification |
|-----------|--------|---------------|
| **Grounding** | No Issues | [Turn 1] Correctly identifies New Cairo Academy for Bachelor's and Suez University for Master's. Accurately references the 1st-place rankings and the Carnova role. [Turn 2] Correctly distinguishes between the undergraduate ranking at New Cairo Academy and the Pre-Master ranking at Suez University. |
| **Conversational Flow** | No Issues | [Turn 1] Context is woven naturally into recommendations without robotic recitation. The phrase "Based on your profile" is brief and functional. [Turn 2] Builds logically on the question without re-announcing known data. |
| **Helpfulness** | No Issues | [Turn 1] Provides actionable recommendations tailored to Ali's specific situation, including the unique angle of his DDD research interest. [Turn 2] Directly answers the question with specific, contextualized advice about leveraging the academic record. |

**Overall Quality:** Very Satisfied

**Rationale:**
> [Turn 1] The model demonstrates strong Grounding by accurately referencing Ali's educational history, distinguishing correctly between the two institutions. Recommendations are tailored to his specific background, including the entrepreneurial experience at Carnova.
> [Turn 2] The response shows excellent contextual memory, correctly attributing rankings to their respective institutions. The advice about consistency over time adds genuine value beyond a generic answer.

---

### Phase 2: Side-by-Side Comparison

| Differentiator | Model A | Model B | Winner |
|----------------|---------|---------|--------|
| **Contextual Accuracy** | Multiple factual errors about education and role | All details accurate | B |
| **Seamless Delivery** | Slightly mechanical opening | Natural integration | B |
| **Unique Utility** | Undermined by errors | Strong tailored value | B |
| **Conversational Momentum** | Errors compound across turns | Builds coherently | B |

**Comparison Rating:** Model B is **Much Better**

**Comparison Rationale:**
Model B delivers a significantly better experience due to accurate Grounding across both turns. Model A's factual errors about Ali's educational background represent critical failures that would lead to misrepresentation if Ali relied on this information. While both models offer similar structural advice, only Model B can be trusted as a foundation for action.

---

*Evaluation conducted using the Context-Aware AI Personalization Evaluation Framework (Ali Ahmed Noureldin, 2026).*