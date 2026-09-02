### Purpose and Role of Analog Missions in Training

Analog missions are simulated space expeditions conducted on Earth to mimic the conditions and challenges of real spaceflight. They place crews in isolated, confined environments for days or months to perform mission-like tasks under stressors such as limited resources and communication delays.

These exercises serve a dual purpose: they are valuable research opportunities to study human performance and behavior in space-like conditions, and they function as training experiences to prepare astronauts and other crew for actual missions. For example, NASA's year-long CHAPEA (Crew Health and Performance Exploration Analog) Mars habitat simulations are designed to test crew health and performance in a Mars-like environment, helping inform designs and plans for future missions [1][3].

By practicing operations in realistic analog settings, crews can identify potential problems and adapt procedures on Earth, ultimately improving safety and effectiveness when humanity ventures to the Moon or Mars. The Austrian Space Forum's AMADEE-18 Mars simulation in Oman is one example: crews lived in habitats to experience isolation, performed science and maintenance tasks, and practiced EVA protocols in a Mars-like desert environment [2].

### Commercial Analog Training Programs (Star Harbor and Others)

In recent years, commercial space companies have developed analog training programs to broaden access to astronaut-like experiences. **Star Harbor**, for instance, is establishing a private spaceflight training campus in Colorado, announced with a planned opening in 2026 [4].

Star Harbor's planned 53-acre facility is to feature:

- Land-based and underwater habitat modules
- A 4-million gallon neutral buoyancy pool
- High-G human centrifuge
- Hypobaric and hyperbaric chambers
- Simulation labs
- Parabolic flight aircraft

These resources are intended to allow public access to astronaut training previously limited to government agencies. Programs are tailored to roles like vehicle operators, mission specialists, scientist-astronauts, and space tourists.

Other commercial efforts like **MMAARS** (Mars and Moon Astronautics Academy and Research Science) offer tiered analog missions for students, professionals, and citizen-scientists, typically available for a fee after completing preliminary training [5].

---

### Screening Criteria for Participant Selection

#### Age and Maturity

- Most programs require participants to be adults (minimum age 18).
- Some programs target specific age ranges; NASA's CHAPEA call required ages 30 to 55 [3].
- Star Harbor has reported centrifuge test participants aged 22 to 88 [4].

#### Physical Fitness and Health

- General health clearance or a physician's exam is required.
- Analog participants may need to lift about 20 lb, be non-smokers, or meet specialized health criteria (for example, SCUBA certification for underwater habitats).

#### Psychological Readiness

- Mental resilience is essential; isolation and confinement produce measurable biobehavioral and psychosocial stress even in short analog missions [7].
- NASA analogs conduct formal psychological screening; commercial programs use interviews to assess motivation and interpersonal skills.

#### Teamwork and Communication Skills

- Emphasis on collaboration, communication, and team dynamics; leadership and cohesion findings from NASA HERA crews inform crew composition [8].
- Some programs conduct panel interviews or group tasks.
- English proficiency is commonly required.

#### Relevant Experience or Skills

- Scientific, technical, or operational backgrounds are often favored.
- Commercial programs are more flexible but still expect high motivation and engagement.

Application processes often include:

- Background and health forms
- One or more interviews
- Proof of fitness (or preparatory courses)
- Feedback loops for unqualified applicants

---

### Comparison to Government Astronaut Program Selection

Analog training screening differs from NASA and ESA astronaut selection, as the table below summarizes:

| Factor                | Analog Missions                             | Government Astronaut Corps        |
|-----------------------|----------------------------------------------|------------------------------------|
| Accessibility         | Broad/inclusive                              | Elite/highly selective             |
| Health Requirements   | Moderate, with focus on basic fitness        | Stringent medical and psych tests  |
| Professional Skills   | Helpful but not mandatory                    | Advanced STEM, aviation, military  |
| Screening Rigor       | 1-2 interviews plus physical clearance       | Years of evaluation and training   |
| Purpose               | Training and research                        | Spaceflight mission assignments    |

Despite differences, both value health, resilience, and teamwork. NASA integrates analog missions into astronaut team training (NEEMO undersea missions, Arctic expeditions, and others) [10].

---

### Analog Missions vs. Other Training Elements

#### Gimbal Rigs and Centrifuge Training

- Short-duration drills for G-force tolerance and disorientation
- Health screening (for example, an FAA Class 2 or Class 3 physical)
- No psychological or team-based screening needed
- See [Multi-Axis Gimbal Simulator](screening-gimbal.html)

#### Neutral Buoyancy and EVA

- Underwater training in neutral buoyancy pools
- Requires swim test and SCUBA certification
- Medical clearance for underwater safety
- Does not test isolation or group dynamics
- See [SCUBA Training and Dive Operations](scuba-training.html)

#### Other Short Courses

- Includes parabolic flights, mock cockpits, wilderness survival
- Physical screens based on course (for example, inner ear or cardiac issues)
- No psychological screening or extended team interaction

> Analog missions are unique in their **holistic** and **long-duration** approach, combining physical, mental, and team-based performance testing.

---

### FHIR Mapping

Analog-mission applications are represented in this guide as FHIR Questionnaires; the [NASA HERA Analog Mission Application](Questionnaire-HERAAnalogMissionApplication.html) captures the background, health, and availability items a candidate completes, and each completed application becomes a `QuestionnaireResponse`. The applicant is recorded with the [Astronaut](StructureDefinition-astronaut.html) Patient profile, which also serves crew members of real missions, so screening results carry forward unchanged if the participant later flies. Facilities such as habitats, pools, and centrifuges are recorded as Location resources using the [xGeo Locations](StructureDefinition-space-location.html) profile, which the guide's underwater-training facilities also build on. Selection decisions and medical clearances that arise from the application are then documented as Procedure and Observation resources tied to the same patient, the pattern used by the [Dive Medical Clearance](StructureDefinition-dive-medical-clearance.html) profile for underwater analogs.

### Summary

Analog mission training:

- Offers a gateway to space-related careers and experiences
- Complements traditional astronaut training
- Emphasizes isolation endurance, teamwork, and mission readiness
- Prepares not just elite astronauts but a broader space workforce

---

### References

- [1] NASA. NASA Selects Participants for One-Year Mars Analog Mission, 2023.
- [2] Austrian Space Forum (OeWF). AMADEE-18 Mars analog field simulation, Dhofar, Oman, 2018.
- [3] Space.com. Commander of NASA's yearlong analog Mars mission: month one (interview). https://www.space.com/nasa-chapea-analog-mars-mission-one-month-interview
- [4] Blooloop. Star Harbor plans world's first training facility for space tourists, 2022. https://blooloop.com/technology/news/star-harbor-commercial-spaceflight-training-facility/
- [5] MMAARS. FAQ and Program Overview, 2025.
- [6] The Space Review. Screening and Training for Commercial Human Spaceflight, 2008.
- [7] Frontiers in Physiology. Biobehavioral and psychosocial stress in analog missions, 2022. https://www.frontiersin.org/journals/physiology/articles/10.3389/fphys.2022.898841/full
- [8] Leading the crew to Mars: Evidence from NASA HERA analog crews. Acta Astronautica, 2025. https://www.sciencedirect.com/science/article/abs/pii/S0094576525005314
- [9] NASTAR Center. Suborbital Spaceflight Participant Training, 2024.
- [10] NASA Johnson Space Center. Analog missions fact sheet, FS-2011-11-057, 2011.
- [11] Increasing fidelity in lunar and martian analogs for behavioral health and performance research. Frontiers in Space Technologies, 2025. https://www.frontiersin.org/journals/space-technologies/articles/10.3389/frspt.2025.1505823/full
