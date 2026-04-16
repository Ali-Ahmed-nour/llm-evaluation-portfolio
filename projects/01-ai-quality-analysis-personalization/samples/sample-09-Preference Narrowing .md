# Sample 09: Preference Narrowing — Over-Indexing on Single Interest

## Scenario Summary

This sample evaluates how two models respond to a broad request for recommendations when rich personal context is available. The focus is on whether models balance multiple preferences appropriately or over-index on a single aspect of the user's profile, creating an "echo chamber" effect.

---

## User Profile

The following personal data is available:

- Name: Alex Kim
- Location: New York, NY
- Music Preferences: Mentioned liking jazz once (3 months ago)
- Other Interests: Technology, cooking, photography, basketball, hiking
- Recent Activity: Purchased DSLR camera, booked photography workshop
- Profession: Software Engineer at a startup
- Frequently Visited: Tech blogs, recipe websites, NBA.com
- Recent Conversation: Discussed new hiking trails in Hudson Valley

---

## Conversation A

### Turn 1

**User:** I'm looking for weekend activity suggestions to try something new.

**Response:** Since you mentioned liking jazz, here are some jazz-focused weekend activities:

1. **Blue Note Jazz Club** — Classic NYC jazz venue
2. **Jazz at Lincoln Center** — World-class performances
3. **Smalls Jazz Club** — Intimate Greenwich Village spot
4. **Village Vanguard** — Legendary jazz destination
5. **Mezzrow** — Speakeasy-style jazz bar

All five of these are walking distance from each other, so you could do a jazz crawl! Would you like showtimes for this weekend?

### Turn 2

**User:** Those are all jazz venues. I said I wanted to try something new.

**Response:** You're right, let me diversify! Here are some new jazz experiences:

1. **Jazz brunch at Ginny's** — Jazz plus food, something different
2. **Outdoor jazz at Central Park** — Nature plus jazz
3. **Jazz photography night** — Combines your camera interest with jazz
4. **Jazz cooking class** — Learn to cook soul food while listening to jazz
5. **Jazz and basketball viewing party** — Some bars do this combo

See? I've incorporated your other interests with jazz!

---

## Conversation B

### Turn 1

**User:** I'm looking for weekend activity suggestions to try something new.

**Response:** Here are some options spanning your different interests:

1. **Photography walk in DUMBO** — Great for your new DSLR, iconic Brooklyn views
2. **Cooking class at Institute of Culinary Education** — Hands-on, social, something different
3. **Knicks or Nets game** — Live basketball, since you follow NBA
4. **Breakneck Ridge hike** — More challenging than Hudson Valley, train-accessible from Grand Central
5. **Tech meetup or hackathon** — Plenty happening this weekend in the city

Since you said "something new" and already have a photography workshop booked, the cooking class might be the freshest experience. Want details on any of these?

### Turn 2

**User:** Those are all jazz venues. I said I wanted to try something new.

**Response:** I think there may be some confusion — I didn't suggest any jazz venues. My suggestions were photography, cooking, basketball, hiking, and tech meetups.

But if my recommendations still feel repetitive of things you already do, I can push further outside your usual profile:

1. **Pottery class in Brooklyn** — Completely hands-on, different skill
2. **Stand-up comedy open mic** — Watch or try performing
3. **Rock climbing gym** — Athletic but different from hiking
4. **Board game café** — Social, low-key, different vibe

Would any of these feel like genuinely "new" territory for you?

---

## Evaluation

### Phase 1: Individual Model Assessment

#### Model A

**Classification:** Personalized

**Dimension Scores:**

| Dimension | Rating | Justification |
|-----------|--------|---------------|
| **Grounding** | Minor Issues | [Turn 1] References a single mention of jazz from 3 months ago while ignoring recent, stronger signals (photography, cooking, hiking, basketball). [Turn 2] Forces other interests into jazz framing. |
| **Conversational Flow** | No Issues | [Turn 1] Recommendations are presented conversationally. [Turn 2] Acknowledges feedback, attempts to adapt. |
| **Helpfulness** | Major Issues | [Turn 1] Five jazz venues when user asked for "something new" — ignores the newness request entirely. [Turn 2] Despite explicit feedback, still forces everything through a jazz lens. "Jazz cooking class" and "jazz photography" aren't real pivots. |

**Overall Quality:** Very Dissatisfied

**Rationale:**
> [Turn 1] The model exhibits preference narrowing by fixating on a single offhand mention of jazz while ignoring a rich profile of other interests (photography with recent purchase, cooking, basketball, hiking). When the user asks for "something new," recommending five jazz venues fails both the personalization balance test and the explicit user request.
> [Turn 2] The model's "diversification" is superficial — it simply appends jazz to other interests rather than genuinely incorporating them. "Jazz photography night" and "Jazz cooking class" demonstrate the model is unable to move beyond its fixation.

---

#### Model B

**Classification:** Personalized

**Dimension Scores:**

| Dimension | Rating | Justification |
|-----------|--------|---------------|
| **Grounding** | No Issues | [Turn 1] Correctly weighs recent signals (DSLR purchase, photography workshop, Hudson Valley hiking) alongside standing interests (NBA, tech, cooking). [Turn 2] Correctly notes no jazz was suggested; offers genuinely different activities. |
| **Conversational Flow** | No Issues | [Turn 1] Multiple interests are balanced naturally without listing profile data. [Turn 2] Handles the confused feedback gracefully, offers to push further outside profile. |
| **Helpfulness** | No Issues | [Turn 1] Recommendations span interests appropriately and directly address "something new" by noting the photography workshop is already booked. [Turn 2] Genuinely pivots to outside-profile activities when user emphasizes newness. |

**Overall Quality:** Very Satisfied

**Rationale:**
> [Turn 1] The model demonstrates appropriate preference balance by spanning multiple interests without over-indexing on any single one. It weighs recent activity (camera purchase, hiking conversation) more heavily than a 3-month-old jazz mention, showing good signal prioritization.
> [Turn 2] The model correctly identifies that no jazz venues were suggested, gently corrects the confusion, and then offers to go further outside the profile entirely. This shows appropriate interpretation of "something new" — the user may want activities beyond their established preferences.

---

### Phase 2: Side-by-Side Comparison

| Differentiator | Model A | Model B | Winner |
|----------------|---------|---------|--------|
| **Contextual Accuracy** | Over-weights old signal | Balances signals appropriately | B |
| **Seamless Delivery** | Conversational but repetitive | Natural variety | B |
| **Unique Utility** | Echo chamber effect | Genuine variety | B |
| **Conversational Momentum** | Fails to genuinely adapt | Adapts and offers alternatives | B |

**Comparison Rating:** Model B is **Much Better**

**Comparison Rationale:**
Model A demonstrates preference narrowing — fixating on a single weak signal (jazz mention from 3 months ago) while ignoring stronger recent signals and the explicit request for "something new." Even after feedback, it forces other interests through the jazz lens rather than genuinely diversifying. Model B shows proper preference balance, weighing recent activity more heavily than old mentions and interpreting "something new" as potentially meaning outside established preferences.

---

*Evaluation conducted using the Context-Aware AI Personalization Evaluation Framework (Ali Ahmed Noureldin, 2026).*