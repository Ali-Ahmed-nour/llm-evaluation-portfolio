# Sample 04: Overnarrating — Book Recommendation Request

## Scenario Summary

This sample evaluates how two models respond to a book recommendation request. The focus is on whether the models integrate user context invisibly or recite biographical details in a robotic, data-report fashion.

---

## User Profile

The following personal data is available:

- Name: Sarah Mitchell
- Location: Austin, Texas
- Current Role: Product Manager at a fintech startup
- Education: MBA from UT Austin (2019)
- Previous Role: Business Analyst at Capital One (2015-2018)
- Interests: Behavioral economics, UX research, hiking
- Currently Reading: "Thinking, Fast and Slow" by Kahneman
- Recent Purchase: Standing desk for home office

---

## Conversation A

### Turn 1

**User:** Can you recommend some books on product strategy?

**Response:** Hi Sarah! As a Product Manager at a fintech startup in Austin, Texas, with your MBA from UT Austin completed in 2019 and your previous experience as a Business Analyst at Capital One from 2015 to 2018, I can see you have a strong foundation in both business strategy and financial services.

Given your interest in behavioral economics — which I note from your profile — and the fact that you're currently reading "Thinking, Fast and Slow" by Kahneman, here are some recommendations:

1. **"Inspired" by Marty Cagan** — As someone working in fintech, which I see you are, you'll find the product discovery frameworks relevant.
2. **"The Lean Product Playbook"** — Your MBA background from UT Austin means you'll appreciate the strategic frameworks.
3. **"Hooked" by Nir Eyal** — This connects to your stated interest in behavioral economics.

Since you're based in Austin and previously worked at Capital One, you might also enjoy "Bank 4.0" for fintech-specific insights.

### Turn 2

**User:** Which one should I start with?

**Response:** Sarah, given that you're currently reading Kahneman's book and you have that behavioral economics interest from your profile, plus your MBA from UT Austin in 2019 and your Product Manager role at a fintech startup, I'd recommend starting with "Hooked" since it bridges behavioral psychology and product design — fitting your background as a former Business Analyst at Capital One.

---

## Conversation B

### Turn 1

**User:** Can you recommend some books on product strategy?

**Response:** Here are some strong picks that should complement your current reading:

1. **"Inspired" by Marty Cagan** — The gold standard for product discovery, with frameworks that apply well to fintech.
2. **"The Lean Product Playbook"** — Practical strategy frameworks you can apply immediately.
3. **"Hooked" by Nir Eyal** — Builds on behavioral principles similar to Kahneman's work, so it'll connect well with what you're reading now.
4. **"Continuous Discovery Habits"** — Strong on user research methods, which aligns with your UX research interest.

If you want something more domain-specific, "Bank 4.0" covers fintech trends in depth.

### Turn 2

**User:** Which one should I start with?

**Response:** I'd go with "Hooked" first. Since you're already in the Kahneman mindset, the behavioral design principles will click immediately. It's also a quick read — you could finish it in a weekend and start applying the Hook Model to your product work right away.

---

## Evaluation

### Phase 1: Individual Model Assessment

#### Model A

**Classification:** Personalized

**Dimension Scores:**

| Dimension | Rating | Justification |
|-----------|--------|---------------|
| **Grounding** | No Issues | [Turn 1] All stated facts are accurate — role, location, education, work history, interests, current reading. [Turn 2] Same accuracy maintained. |
| **Conversational Flow** | Major Issues | [Turn 1] The opening recites nearly the entire profile in sequence before answering. Phrases like "which I note from your profile" and "which I see you are" explicitly announce the personalization. [Turn 2] Repeats the pattern, re-listing MBA, UT Austin, Capital One before giving the recommendation. |
| **Helpfulness** | Minor Issues | [Turn 1] The recommendations themselves are appropriate, but they're buried under profile recitation. [Turn 2] The actual recommendation is useful but arrives after unnecessary biographical summary. |

**Overall Quality:** Somewhat Dissatisfied

**Rationale:**
> [Turn 1] The model demonstrates accurate Grounding but severely poor Conversational Flow. Opening with "As a Product Manager at a fintech startup in Austin, Texas, with your MBA from UT Austin completed in 2019 and your previous experience as a Business Analyst at Capital One from 2015 to 2018..." reads like a database query result, not natural conversation. The phrase "which I note from your profile" explicitly breaks the conversational illusion.
> [Turn 2] Despite being a simple follow-up question, the model repeats multiple profile elements before delivering the actual recommendation. This overnarrating pattern makes the interaction feel like surveillance rather than assistance.

---

#### Model B

**Classification:** Personalized

**Dimension Scores:**

| Dimension | Rating | Justification |
|-----------|--------|---------------|
| **Grounding** | No Issues | [Turn 1] References current reading, fintech context, and UX interest accurately but implicitly. [Turn 2] References "Kahneman mindset" appropriately. |
| **Conversational Flow** | No Issues | [Turn 1] Context shapes the recommendations without being announced. "Complement your current reading" and "aligns with your UX research interest" integrate naturally. [Turn 2] Brief, direct answer without profile recitation. |
| **Helpfulness** | No Issues | [Turn 1] Recommendations are tailored and clearly presented. [Turn 2] Adds practical value ("quick read," "finish it in a weekend") beyond just naming a book. |

**Overall Quality:** Very Satisfied

**Rationale:**
> [Turn 1] The model demonstrates that personalization can be effective while remaining invisible. It uses context to select and frame recommendations without listing biographical facts. The phrase "complement your current reading" shows awareness of the Kahneman book without announcing "I see from your profile that you're reading..."
> [Turn 2] The response is concise and action-oriented. By referencing "the Kahneman mindset" rather than "your current reading of 'Thinking, Fast and Slow' by Kahneman which I see in your profile," the model shows natural conversational awareness.

---

### Phase 2: Side-by-Side Comparison

| Differentiator | Model A | Model B | Winner |
|----------------|---------|---------|--------|
| **Contextual Accuracy** | Accurate | Accurate | Tie |
| **Seamless Delivery** | Robotic profile recitation | Invisible integration | B |
| **Unique Utility** | Good recommendations, poor delivery | Good recommendations, clean delivery | B |
| **Conversational Momentum** | Repeats pattern each turn | Builds naturally | B |

**Comparison Rating:** Model B is **Much Better**

**Comparison Rationale:**
Both models have accurate Grounding, but they differ dramatically in Conversational Flow. Model A's habit of reciting profile data before each response creates a surveillance-like experience that undermines the helpfulness of its recommendations. Model B shows that effective personalization means using context to shape answers, not announcing what you know about the user.

---

*Evaluation conducted using the Context-Aware AI Personalization Evaluation Framework (Ali Ahmed Noureldin, 2026).*