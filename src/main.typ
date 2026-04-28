#import "header.typ"
#import "sections.typ" : work, education, skills

#set page(
  paper: "a4",
  margin: 1cm,
)

#header

#set text(size: 10pt)

== Work Experience

#work(

  company: "UBC Formula Electric",
  href: "ubcformulaelectric.com",
  positions: (
    (
      title: "Telemetry and Data Acquisition Team Member",
      start-date: "09/2025",
    ),
  ),
  sections: (
    "Architected a real-time telemetry dashboard to ingest and visualize 100+ live sensor signals at a 2MHz frequency, utilizing a high-throughput rust backend to handle massive data payloads.", 
    "Optimized React rendering performance by diagnosing unstable array references and implementing fine-grained state subscriptions system, reducing chart-driven re-renders by 95% and ensuring UI responsiveness during high-speed data bursts.",
    "Developed robust data visualization components capable of rendering high-density numerical datasets and enum timelines with sub-millisecond latency.",
    "Introduced a custom level of detail system to dynamically adjust chart fidelity based on user interaction and data velocity, maintaining smooth performance even during telemetry and alert spikes."
  )
)

#work(
  company: "Coyote Cruises",
  href: "coyotecruises.com",
  positions: (
    (
      title: "Operations Manager",
      start-date: "06/2024",
    ),
    (
      title: "Team Supervisor",
      start-date: "06/2022",
      end-date: "06/2024"
    ),
    (
      title: "Tubing Attendant",
      start-date: "08/2020",
      end-date: "06/2022"
    )
  ),
  sections: (
    "Managed 40+ employees and served 300k+ annual customers, directing recruitment, training and safety.",
    "Increased revenue by 15% and maximum capacity by 40% through operational improvements and scheduling optimization.",
    "Migrated website, cutting load times by almost 50% and boosting SEO traffic to 30k+ monthly visitors.",
    "Promoted twice within four years, from entry-level role to Operations Manager."
  )
)

== Projects

#work(
  company: "Gathr",
  href: "gathr.tv",
  positions: (
    (
      title: "Architect & Lead Developer",
      start-date: "02/2026",
    ),
  ),
  sections: (
    "Architected a community embedding platform designed to aggregate streaming audiences into a unified, real-time environment.",
    "Engineered a distributed real-time chat engine utilizing a Redis-backed Pub/Sub architecture to maintain synchronization and message ordering across multiple server instances.",
    "Optimized high-traffic websocket communication to support thousands of concurrent connections, implementing custom message-batching and throttling logic.",
    "Developed a modular emote and media rendering engine capable of parsing and injecting complex assets into high-velocity chat streams with minimal overhead.",
    "Designed and implemented a custom user presence system to track and display real-time viewer engagement metrics across multiple channels, enhancing community interaction and retention."
  )
)

#work(
  company: "Note Rack",
  href: "github.com/eroxl/note-rack",
  positions: (
    (
      title: "Architect & Lead Developer",
      start-date: "01/2022",
      end-date: "09/2024"
    ),
  ),
  sections: (
    "Engineered a custom block-based editor in React/TypeScript, solving browser cursor API limitations with a custom position-tracking algorithm to resolve cursor location relative to dynamic line heights.",
    "Architected a custom Retrieval-Augmented Generation system to provide context-aware AI assistance; developed an automated pipeline to generate document embeddings, indexed in Qdrant for semantic retrieval during inference.",
    "Engineered the context injection layer that feeds high-relevance document segments to OpenAI's API, enabling the LLM to provide precise, ground-truth-based responses over private user data.",
    "Published the editor core as a modular npm library and containerized the full stack with Docker Compose for high-availability production deployment."
  )
)

== Education

#education(
  institution: "University of British Columbia",
  degree: "Bachelor of Computer Science",
  start-date: "09/2024",
  end-date: "05/2029",
  relevant-courses: (
    "Data Structures & Algorithms", 
    "Computer Systems", 
    "Software Engineering", 
    "Computational Theory",
    "Database Design",
    "Linear Algebra",
    "Vector Calculus",
    "Probability & Statistics",
  )
)

== Skills

#skills(
  header: "Languages and Frameworks",
  skills: (
    "Javascript",
    "TypeScript", 
    "Python", 
    "Java", 
    "SQL",
    "C++",
    "Lisp",
    "Rust",
    "React",
    "Next.js",
  )
)

#skills(
  header: "Databases and Tools",
  skills: (
    "PostgreSQL",
    "Elasticsearch",
    "Qdrant",
    "Docker",
    "Git",
    "Linux",
    "AWS"
  )
)