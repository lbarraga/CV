#set page(paper: "a4", margin: (x: 1.2cm, y: 1.2cm))
#set text(font: "Linux Libertine", size: 10pt)
#set list(tight: true, indent: 1em)

// --- Helper Functions ---
#let cv-header(name, email, github, linkedin, location) = {
  grid(
    columns: (1fr, auto),
    gutter: 15pt,
    align(left + horizon)[
      #text(size: 20pt, weight: "bold", fill: rgb("003366"))[#name]\
      #v(3pt)
      #email | #github \
      #linkedin | #location
    ],
    align(right + horizon)[
      #box(
        radius: 4pt, 
        clip: true,
        image("profile_picture.jpeg", width: 2.5cm) 
      )
    ]
  )
  v(4pt)
}

#let section(title) = {
  v(4pt)
  text(size: 12pt, weight: "bold", fill: rgb("003366"))[#title]
  line(length: 100%, stroke: 0.75pt + rgb("003366"))
  v(3pt)
}

#let cv-entry(title, organization, date, location, description) = {
  grid(
    columns: (1fr, auto),
    [#text(weight: "bold")[#title] | #text(style: "italic")[#organization] | #location],
    text(style: "oblique")[#date]
  )
  if description != none [
    #v(2pt)
    #description
  ]
  v(5pt)
}

// --- CV Content ---
#cv-header(
  "Lukas Barragan Torres", 
  "lukas.barragantorres@UGent.be", 
  "github.com/lbarraga", 
  "linkedin.com/in/lukas-barragan-torres",
  "Ghent, Belgium"
)

#section("Education")
#cv-entry(
  "Master of Science in Computer Science", 
  "Ghent University", 
  "Sept 2024 -- June 2026", 
  "Ghent, Belgium", 
  [
    - Graduated *Magna Cum Laude*.
    - *Master Thesis:* Designed and implemented a WebAssembly System Interface (WASI) for the Serial Peripheral Interface (SPI), enabling hardware-agnostic execution for embedded applications.
  ]
)

#cv-entry(
  "Bachelor of Science in Informatics", 
  "Ghent University", 
  "Sept 2021 -- June 2024", 
  "Ghent, Belgium", 
  [- Graduated *Cum Laude*. Served as 3rd Bachelor Student Representative on the Computer Science Education Committee.]
)

#section("Professional Experience")
#cv-entry(
  "Machine Learning Intern", 
  "Zero Friction", 
  "Summer 2025", 
  "Ghent, Belgium", 
  [
    - Developed a machine learning model over a 4-week period to automatically identify and flag incorrect invoices via anomaly detection.
    - Utilized Python, C\#, Microsoft Azure, and Cosmos DB to build and integrate the solution.
  ]
)

#cv-entry(
  "Systems Developer (Student)", 
  "HPC UGent", 
  "Summer 2024", 
  "Ghent, Belgium", 
  [
    - Developed a tool to manage and synchronize virtual environments across different high-performance computing clusters.
    - Contributed to official technical user documentation for HPC infrastructure.
  ]
)

#cv-entry(
  "Software Developer (Student)", 
  "Zero Friction", 
  "Summer 2023", 
  "Ghent, Belgium", 
  [
    - Developed a command-line database migration tool in C\# to duplicate Cosmos DB databases using the .NET SDK.
    - Successfully integrated the tool into an active Azure release pipeline.
  ]
)

#section("Technical Skills")
- *Programming Languages:* Rust, Python, Java, C, C\#, Bash
- *Embedded & Wasm:* WebAssembly (Wasmtime, Pulley), WASI, `embedded-hal`, SPI protocol
- *Systems & Infrastructure:* Linux (Arch, NixOS), Bare-metal Microcontrollers, Docker, HPC Environments

#section("Languages")
- *Dutch:* Native 
- *English:* Full professional proficiency
- *Spanish:* Intermediate 
- *French:* Basic 
- *Chinese:* HSK 1 Certified (Very basic)

#section("Extracurricular Activities")
- *Self-Hosting:* Administer a personal home server managing containerized applications via Docker.
- *Lifeguard & Swimming Instructor:* Got my lifeguard certification in 2021 and have 8 years experience as a swimming instructor.
- *Hobbies*: I like swimming, running, playing chess and learning about computers.
