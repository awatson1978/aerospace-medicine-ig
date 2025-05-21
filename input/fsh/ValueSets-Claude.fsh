Alias: $sct = http://snomed.info/sct

ValueSet: SpaceEnvironmentalFactorsValueSet
Id: space-environmental-factors
Title: "Space Environmental Factors"
Description: "Environmental factors relevant to human spaceflight, including weightlessness, radiation, isolation, and decompression"

* ^experimental = true
* ^status = #draft

* include $sct#37247000 "Weightlessness" // Exact match found for "weightlessness"
* include $sct#212989002 "Weightlessness" // Exact match found for "weightlessness"
* include $sct#242028000 "Weightlessness" // Exact match found for "weightlessness"
* include $sct#46316000 "Cosmic radiation" // Exact match found for "cosmic radiation"
* include $sct#242796004 "Exposure to cosmic radiation" // Found in terms containing "cosmic radiation"
* include $sct#138899005 "H/O: radiation exposure" // Found in terms containing "radiation exposure"
* include $sct#148459003 "Radiation exposure screening" // Found in terms containing "radiation exposure"
* include $sct#16197009 "Social isolation" // Found in terms containing "isolation"
* include $sct#64441002 "Social isolation" // Found in terms containing "isolation"
* include $sct#19842001 "Isolation after contact with infectious disease" // Found in terms containing "isolation"
* include $sct#44532001 "Barotrauma" // Found in terms containing "barotrauma"
* include $sct#49252004 "Otitic barotrauma" // Found in terms containing "barotrauma"
* include $sct#123672002 "Pulmonary barotrauma" // Found in terms containing "barotrauma"
* include $sct#33499000 "Oxygen toxicity" // Exact match found for "oxygen toxicity"
* include $sct#78427001 "Occupational noise exposure" // Found in terms containing "noise exposure"
* include $sct#44016006 "Decompression sickness" // Exact match found for "decompression sickness"
* include $sct#89684003 "Decompression sickness" // Found in terms containing "decompression sickness"
* include $sct#5770003 "Decompression injury" // Found in terms containing "decompression"

ValueSet: SpaceRadiationEffectsValueSet
Id: space-radiation-effects
Title: "Space Radiation Effects"
Description: "Radiation effects and conditions relevant to human spaceflight, including cosmic radiation, radiation sickness, and radiation injuries"

* ^experimental = true
* ^status = #draft

* include $sct#46316000 "Cosmic radiation" // Exact match found for "cosmic radiation"
* include $sct#242796004 "Exposure to cosmic radiation" // Found in terms containing "cosmic radiation"
* include $sct#20558004 "Radiation sickness" // Exact match found for "radiation sickness"
* include $sct#85983004 "Radiation sickness" // Exact match found for "radiation sickness"
* include $sct#32215002 "Subacute radiation sickness" // Found in terms containing "radiation sickness"
* include $sct#45941008 "Chronic radiation sickness" // Found in terms containing "radiation sickness"
* include $sct#1791001 "Radiation injury with fibrosis" // Found in terms containing "radiation injury"
* include $sct#22483007 "Radiation injury with inflammation" // Found in terms containing "radiation injury"
* include $sct#30386001 "Radiation injury with necrosis" // Found in terms containing "radiation injury"
* include $sct#81018009 "Radiation injury" // Found in terms containing "radiation injury"
* include $sct#109301001 "Radiation injury of bone" // Found in terms containing "radiation injury"
* include $sct#109953003 "Radiation injury of bone marrow" // Found in terms containing "radiation injury"
* include $sct#123730007 "Acute radiation injury" // Found in terms containing "radiation injury"
* include $sct#360002 "Acute radiation disease" // Found in terms containing "radiation"
* include $sct#2966007 "Aplastic anemia secondary to radiation" // Found in terms containing "radiation"
* include $sct#11804009 "Contact dermatitis due to solar radiation" // Found in terms containing "solar radiation"


ValueSet: SpacePhysiologicalEffectsValueSet
Id: space-physiological-effects
Title: "Space Physiological Effects"
Description: "Physiological effects and conditions relevant to human spaceflight, including motion sickness, bone loss, muscle atrophy, and sleep disorders"

* ^experimental = true
* ^status = #draft

* include $sct#37031009 "Motion sickness" // Exact match found for "motion sickness"
* include $sct#88092000 "Muscle atrophy" // Exact match found for "muscle atrophy"
* include $sct#156721007 "Disuse muscle atrophy" // Found in terms containing "muscle atrophy"
* include $sct#240129002 "Disuse muscle atrophy" // Found in terms containing "muscle atrophy"
* include $sct#109706009 "Alveolar bone loss" // Found in terms containing "bone loss"
* include $sct#109709002 "Horizontal alveolar bone loss" // Found in terms containing "bone loss"
* include $sct#109710007 "Vertical alveolar bone loss" // Found in terms containing "bone loss"
* include $sct#28651003 "Orthostatic hypotension" // Found in terms containing "orthostatic"
* include $sct#84438001 "Idiopathic orthostatic hypotension" // Found in terms containing "orthostatic"
* include $sct#75181005 "Chronic orthostatic hypotension" // Found in terms containing "orthostatic"
* include $sct#40031005 "Visual impairment" // Exact match found for "visual impairment"
* include $sct#39898005 "Sleep disorder" // Exact match found for "sleep disorder"
* include $sct#111489007 "Breathing-related sleep disorder" // Found in terms containing "sleep disorder"
* include $sct#30920001 "Circadian rhythm" // Exact match found for "circadian rhythm"
* include $sct#15976004 "Abnormal circadian rhythm" // Found in terms containing "circadian"
* include $sct#3745000 "Circadian rhythm sleep disorder" // Found in terms containing "circadian"
* include $sct#271794005 "Circadian dysregulation" // Found in terms containing "circadian"
* include $sct#62577008 "Insomnia" // Exact match found for "insomnia"
* include $sct#30869003 "Hypoxia" // Exact match found for "hypoxia"
* include $sct#238158000 "Hyperoxia" // Exact match found for "hyperoxia"
* include $sct#250844005 "Intracranial pressure" // Exact match found for "intracranial pressure"
* include $sct#28073009 "Increased intracranial pressure" // Found in terms containing "intracranial pressure"
* include $sct#57964004 "Decreased intracranial pressure" // Found in terms containing "intracranial pressure"
* include $sct#16986008 "Back pain" // Exact match found for "back pain"
* include $sct#78441005 "Osteopenia" // Exact match found for "osteopenia"
* include $sct#64859006 "Osteoporosis" // Exact match found for "osteoporosis"
* include $sct#16046003 "Muscle stiffness" // Exact match found for "muscle stiffness"

ValueSet: SpaceCardiovascularEffectsValueSet
Id: space-cardiovascular-effects
Title: "Space Cardiovascular Effects"
Description: "Cardiovascular effects and conditions relevant to human spaceflight, including orthostatic intolerance, heart rate changes, and blood pressure"

* ^experimental = true
* ^status = #draft

* include $sct#28651003 "Orthostatic hypotension" // Found in terms containing "orthostatic"
* include $sct#75181005 "Chronic orthostatic hypotension" // Found in terms containing "orthostatic"
* include $sct#84438001 "Idiopathic orthostatic hypotension" // Found in terms containing "orthostatic"
* include $sct#230664009 "Sympathotonic orthostatic hypotension" // Found in terms containing "orthostatic"
* include $sct#80042002 "Heart rate" // Exact match found for "heart rate"
* include $sct#28352003 "Irregular heart rate" // Found in terms containing "heart rate"
* include $sct#2004005 "Normal blood pressure" // Found in terms containing "blood pressure"
* include $sct#12763006 "Decreased blood pressure, not hypotension" // Found in terms containing "blood pressure"
* include $sct#12929001 "Normal systolic blood pressure" // Found in terms containing "blood pressure"
* include $sct#3424008 "Tachycardia" // Found in terms containing "tachycardia"
* include $sct#6456007 "Supraventricular tachycardia" // Found in terms containing "tachycardia"
* include $sct#17594002 "Fetal bradycardia affecting management of mother" // Found in terms containing "bradycardia"
* include $sct#29894000 "Vagal bradycardia" // Found in terms containing "bradycardia"
* include $sct#6285003 "Tachyarrhythmia" // Found in terms containing "arrhythmia"
* include $sct#17366009 "Atrial arrhythmia" // Found in terms containing "arrhythmia"


ValueSet: SpaceNeurologicalEffectsValueSet
Id: space-neurological-effects
Title: "Space Neurological Effects"
Description: "Neurological effects relevant to human spaceflight, including vestibular conditions, motion sickness, and intracranial pressure changes"

* ^experimental = true
* ^status = #draft

* include $sct#246001 "Lateral vestibular nucleus" // Found in terms containing "vestibular"
* include $sct#3931001 "Vestibular window" // Found in terms containing "vestibular"
* include $sct#16860002 "Vestibular function test with observation and evaluation by physician" // Found in terms containing "vestibular"
* include $sct#8535002 "Cochleovestibular active Ménière's disease" // Found in terms containing "vestibular" 
* include $sct#37031009 "Motion sickness" // Exact match found for "motion sickness"
* include $sct#3170006 "Papilledema associated with increased intracranial pressure" // Found in terms containing "intracranial pressure"
* include $sct#11692000 "Normal intracranial pressure" // Found in terms containing "intracranial pressure"
* include $sct#28073009 "Increased intracranial pressure" // Found in terms containing "intracranial pressure"
* include $sct#57964004 "Decreased intracranial pressure" // Found in terms containing "intracranial pressure"
* include $sct#12738006 "Brain" // Exact match found for "brain"
* include $sct#68267002 "Benign intracranial hypertension" // Found in terms containing "intracranial hypertension"
* include $sct#3235001 "Disorder of balance" // Found in terms containing "balance"
* include $sct#10904000 "Orthostatic body position" // Found in terms containing "orthostatic"


ValueSet: SpaceVisualEffectsValueSet
Id: space-visual-effects
Title: "Space Visual Effects"
Description: "Visual and ocular effects relevant to human spaceflight, including visual impairment, optic nerve conditions, and intraocular pressure changes"

* ^experimental = true
* ^status = #draft

* include $sct#40031005 "Visual impairment" // Exact match found for "visual impairment"
* include $sct#193703005 "Better eye: near total visual impairment, Lesser eye: total visual impairment" // Found in terms containing "visual impairment"
* include $sct#193704004 "Better eye: near total visual impairment, Lesser eye: near total visual impairment" // Found in terms containing "visual impairment"
* include $sct#18234004 "Optic nerve" // Exact match found for "optic nerve"
* include $sct#126968005 "Neoplasm of optic nerve" // Found in terms containing "optic nerve"
* include $sct#14460007 "Hemorrhage in optic nerve sheaths" // Found in terms containing "optic nerve"
* include $sct#23670006 "Decreased intraocular pressure" // Found in terms containing "intraocular pressure"
* include $sct#24075007 "Abnormal intraocular pressure" // Found in terms containing "intraocular pressure"
* include $sct#103274003 "Normal intraocular pressure with narrow cleft" // Found in terms containing "intraocular pressure"
* include $sct#111526001 "Papilledema" // Found in terms containing "papilledema"
* include $sct#12184005 "Visual field defect" // Found in terms containing "visual field defect"
* include $sct#33048000 "Peripheral visual field defect" // Found in terms containing "visual field defect"
* include $sct#13164000 "Reduced visual acuity" // Found in terms containing "visual acuity"
* include $sct#23986001 "Glaucoma" // Exact match found for "glaucoma"
* include $sct#81745001 "Eye" // Exact match found for "eye"


ValueSet: SpacePsychologicalEffectsValueSet
Id: space-psychological-effects
Title: "Space Psychological Effects"
Description: "Psychological effects relevant to human spaceflight, including sleep disorders, isolation, anxiety, and depression"

* ^experimental = true
* ^status = #draft

* include $sct#39898005 "Sleep disorder" // Exact match found for "sleep disorder"
* include $sct#111489007 "Breathing-related sleep disorder" // Found in terms containing "sleep disorder"
* include $sct#3745000 "Circadian rhythm sleep disorder" // Found in terms containing "sleep disorder"
* include $sct#16197009 "Social isolation" // Found in terms containing "isolation"
* include $sct#64441002 "Social isolation" // Found in terms containing "isolation"
* include $sct#29903003 "Sensory deprivation isolation" // Found in terms containing "isolation"
* include $sct#126943008 "Separation anxiety" // Found in terms containing "anxiety"
* include $sct#109006 "Anxiety disorder of childhood OR adolescence" // Found in terms containing "anxiety"
* include $sct#832007 "Moderate major depression" // Found in terms containing "depression"
* include $sct#80216008 "Cognitive disturbance" // Found in terms containing "cognitive"
* include $sct#102891000 "Age-related cognitive decline" // Found in terms containing "cognitive"
* include $sct#62577008 "Insomnia" // Exact match found for "insomnia"
* include $sct#8614008 "Vocal fatigue" // Found in terms containing "fatigue"
* include $sct#17099003 "Peripheral muscle fatigue" // Found in terms containing "fatigue"
* include $sct#22171002 "Neuromuscular fatigue" // Found in terms containing "fatigue"


ValueSet: SpaceMonitoringProceduresValueSet
Id: space-monitoring-procedures
Title: "Space Monitoring Procedures"
Description: "Monitoring procedures relevant to human spaceflight, including vital signs monitoring and physiological monitoring"

* ^experimental = true
* ^status = #draft

* include $sct#33581006 "Monitoring patient vital signs by nurse" // Found in terms containing "vital signs"
* include $sct#34667007 "Special care of neurological patient, with neurological vital signs" // Found in terms containing "vital signs"
* include $sct#82856007 "Taking neurologic vital signs" // Found in terms containing "vital signs"
* include $sct#118227000 "Vital signs finding" // Found in terms containing "vital signs"
* include $sct#46680005 "Vital signs" // Exact match found for "vital signs"
* include $sct#72970002 "Normal vital signs" // Found in terms containing "vital signs"
* include $sct#252793002 "Intraoperative neurophysiological monitoring" // Found in terms containing "physiological monitoring"
* include $sct#281691001 "Physiological monitoring regimes" // Found in terms containing "physiological monitoring"
* include $sct#304493006 "Multisystem physiological monitoring regimes" // Found in terms containing "physiological monitoring"
* include $sct#16830007 "Visual acuity testing" // Found in terms containing "visual acuity"
* include $sct#16860002 "Vestibular function test with observation and evaluation by physician" // Found in terms containing "vestibular"
* include $sct#2982008 "Monitoring of blood pressure" // Found in terms containing "blood pressure"
* include $sct#12569007 "Biofeedback, regulation of blood pressure" // Found in terms containing "blood pressure"



