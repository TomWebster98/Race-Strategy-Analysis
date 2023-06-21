# *What Made the Difference?* MonacoGP: Verstappen vs Alonso

## Qualifying

The Monaco Grand Prix circuit, infamous for its slow hairpins and tight chicanes, features little opportunity for overtakes, especially in the modern Formula 1 vehicles which have grown in size year on year. As a result, the qualifying session in Monaco is considered to be the most important of the season; a poor performance on Saturday in Monaco almost impossible to recover on the Sunday, while a strong showing on Saturday can be easier to convert and maintain in the race.

With the Monaco circuit characteristics seemingly levelling the balance of performance among the top teams, the RB19 unable to capitalise on its straight-line speed and DRS efficiciency advantage, the fight for pole position was open to at least 3 teams. With Alonso's strong performances all season, and continuing the run of form in the early stages of qualifying, he looked to be the primary source of competition for Verstappen.

Nothing is a given in Monaco, and the rather extreme track evolution (increasing speed of the circuit) led to challenging strategic battles throughout qualifying. In these conditions, with an ever-evolving track surface and laptimes continuing to improve, ensuring that the tyres are in the right temperature conditions in combination with securing suitable track position for the final hotlap of the session, is vital for delivering an optimal lap. As the final part of qualifying drew to a close, it was Ocon, Alonso, and Verstappen who would be most successful in this strategy. So, what made the difference?

Sector 1 showed the smallest inter-quartile field spread, perhaps to be expected given the nature of this sector, featuring significant full-throttle running and being the shortest of the three. In this sector, it was Alonso who consistently set the fastest times, with an optimal 18.496 seconds, his personal best.

![Sector 1 Distribution](/Data%20Visualisations/2023%20Season/MonacoGP/MonacoGP_Qualifying_S1Distribution.png)

Sector 2 showed the largest inter-quartile field spread, and given this sector is almost twice as long as sector 1, with some of the slowest corners on the entire Formula 1 calendar, before leading onto the famous high-speed curve through the tunnel, lending itself to significant time gain or loss, it is expected to be the sector with the highest laptime variation. Once again, it was Alonso who was fastest in Sector 2 in his final run of Q3, posting a time of 33.844 seconds. 

![Sector 2 Distribution](/Data%20Visualisations/2023%20Season/MonacoGP/MonacoGP_Qualifying_S2Distribution.png)

Finally, in sector 3, it was Max Verstappen who turned the tide on Alonso and posted an 18.821 second time, a tenth of a second faster than Ocon, the next best. As it transpired, it would be this sector 3 time from Verstappen that would secure pole position ahead of Alonso in P2. Given the duration of sector 3 being similar to that of the first sector, it may be surprising to see a significantly larger inter-quartile field spread, however the nature of the track elements in this third sector compared to the first, invites greater uncertainty and variety in the drivers' execution, with the tricky swimming pool chicane and challenging low-speed penultimate corner.

![Sector 3 Distribution](/Data%20Visualisations/2023%20Season/MonacoGP/MonacoGP_Qualifying_S3Distribution.png)

The cumulative laptime delta to Verstappen, for Alonso, Leclerc, and Ocon is shown below. At the sector 1 timing line Alonso is trending for pole position with a ~0.15 second advantage over Verstappen, a margin that is improved to ~0.2 seconds at the sector 2 timing line. Leclerc was also able to improve relative to Verstappen in sector 2, after being slightly behind in the first. Verstappen however, submitted an impressive sector 3 time to reclaim any time loss from the earlier stages of the lap, as can be seen by the steep incline in relative time delta for Alonso, Leclerc and Ocon at the final timing line. The relative gradients of the final trend show that Alonso lost out the most in sector 3 relative to Verstappen, with Ocon the closest to Max's time, resulting in the most shallow delta gradient of the 3. The theoretical optimal lap trace is shown as a dotted line, confirming the optimal lap would come in the combination of Alonso's sector 1 and 2 times, concluded by Verstappen's sector 3.

![Lap Time Delta](/Data%20Visualisations/2023%20Season/MonacoGP/MonacoGP_Qualifying_OptimDelta.png)

## Race Context & Result

Lining up on the front row of the grid, Alonso starting on the hard tyre behind Verstappen on the medium compound, the prospect of a strategic battle at the Monaco Grand Prix was fascinating. Verstappen would have better pace initially on the softer of the two tyres compared to Alonso, but Alonso would have greater flexibility in pit window due to the increased durability of the hard tyre relative to the medium compound. Starting Max on the faster tyre improves his chances of securing a good race start and getting off the line quickly to lead out of turn 1, an essential part of winning in Monaco given the restrictions on overtaking opportunities. Starting Alonso on the more durable tyre compound provides strategic flexibility, meaning Aston Martin can make their mandatory pit stop further into the race duration, useful when holding out for an expected weather change, taking advantage of a wider safety car window, or even executing an overcut and minimising the time loss from running behind slower cars after pitting.

*So did this srategic plan pay-off for Aston Marting and Alonso?*

In short, no. Max was able to hold on to P1 for the entire duration of the Grand Prix and claim the victory by over 27 seconds to Alonso in P2. But this result didn't come about without a significant number of traps and challenges that required careful strategic navigation. 

## Strategy Overview

Starting on the medium tyre, Verstappen would aim to get off the line well and hold the lead into turn 1, before pulling a comfortable gap (over 3 seconds) such that Red Bull could react to any undercut attempts from Alonso and the other drivers behind. Meanwhile, Alonso would aim to hold on to Verstappen's pace as much as possible in the opening stint, remaining within range to execute an undercut or overcut as appropriate. Equally, with the prospect of rain late in the race having more durable tyres to hold on until such a time as intermediate or wet tyres were needed, provided more flexibility in pit window than those starting on softer tyres, and therefore potentially requiring one less pit stop and gaining track position - the key to winning in Monaco.

![Race Delta](/Data%20Visualisations/2023%20Season/MonacoGP/MonacoGP_Race_Delta.png)

As can be seen in the graph above, showing the time delta to Verstappen for each lap of the race, Alonso dropped back by a small margin each lap until lap 10, after which the delta increased at a greater rate until a peak of around 12 seconds on lap 24 where it remained constant for 3 laps, before decreasing again. During this phase of the opening stint, the graining on Verstappen's medium compound tyres hindered his pace for a further 6 laps as Alonso closed the gap to just 5.8 seconds on lap 33. As is often observed with the current generation of Pirelli tyres in Formula 1, this graining phase of the tyre cleared up, and unlocked additional pace in the tyre once more. With Hamilton and Ocon pitting on laps 31 and 32 respectively, it was down to Alonso and Verstappen to hold on as long as possible and with reasonable pace, to ensure they could execute a pit stop without falling back into trafffic, or having to complete an extra stop if the rain eventually fell.

![Race Laptimes](/Data%20Visualisations/2023%20Season/MonacoGP/MonacoGP_Race_Laptimes.png)

As it happened, the rain came on lap 51 in the form of a highly localised shower in the first few corners of sector 2.

## Navigating the Weather Change

With rain falling in sector 2, but completely dry sectors 1 and 3, choosing the correct crossover point to switch to intermediate tyres is vital; switch too early and the tyres would overheat and lose traction in the dry sections of the track, but stay out for too long on older, harder compound slick tyres and the risk of an incident and greater time loss increases. Since teams utlilise driver feedback, tyre temperatures, lap times and radar information to adjust strategy decisions in accordance with changing conditions, the next few laps were a frenzy of activity on the radio channels and on the pit wall. With radar imagery showing light rain in sector 2, heavier pockets of rain in the surrounding areas, and clear areas inbetween, there were plenty of traps to fall in by making th eincorrect decision.

Aston Martin tested the intermediate tyres first with Stroll, and having not seen suitable laptime data, or perhaps expecting the rain to clear up quickly, elected to stop Alonso for the medium compound tyre on lap 54, while Verstappen remained on the medium tyre he started the race with. Having exited the pits and approaching sector 2 on lap 55, it became clear that Aston Martin had made the incorrect call, and they should have fitted the intermediate tyre. Having made the assessment they were using the wrong tyre for the current weather conditions, Alonso would pit again on lap 55, this time for the intermediate. It was also on lap 55 that Verstappen would fit the intermediate tyres for the remainder of the race. 

## What Enabled this Result?

- While Verstappen demonstrated superior pace in the opening stint of the race, despite a minor period of graining on the medium tyre, Red Bull were granted increased breathing room in their strategic decision making for the pit stop window where they could comfortably cover off any undercut attempts.

- Aston Martin's ill advised stop for medium tyres on lap 54, leading to an additional stop on lap 55 for Alonso and falling over 20 seconds behind Verstappen. With this mistake, the victory was secured for Red Bull and Verstappen as long as no major incident occurred. 

## What Could Have Changed the Result?

- If Aston Martin had fitted the intermediate tyre for Alonso on lap 54, as would have been the correct decision looking back, Alonso may have had a suitable opportunity to close the 13 second gap and push on in the final stint of the race with a head-to-head sprint with Verstappen.

- If Hamilton and Ocon had suitable pace in the early phase of the Grand Prix and remained close enough to Verstappen and Alonso, such that their pit stops on lap 31 and 32 from medium to hard tyres posed a legitimate undercut threat to Verstappen, then Red Bull may have been inclined to cover off this threat with an early pit stop of their own on lap 32 or 33, thus affording track position to Alonso who would have then had a chance to execute an overcut with the hard tyre before changing to fresh mediums in the final stages of the race.

- If Alonso remained closer to Verstappen in the early stages of the race, the graining on Verstappen's medium tyres may have left him vulnerable between laps 24 and 33, or led him to incorrectly manage this tyre phase, and thus become vulnerable later in the stint, perhaps provoking an earlier pit stop before the rain period.