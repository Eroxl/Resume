
#let parse-date(date: "") = {
  let parts = date.split("/")

  if parts.len() != 2 {
    return date
  }

  let month = {
    (
      (parts.at(0) == "01", "Jan"), 
      (parts.at(0) == "02", "Feb"), 
      (parts.at(0) == "03", "Mar"), 
      (parts.at(0) == "04", "Apr"), 
      (parts.at(0) == "05", "May"), 
      (parts.at(0) == "06", "Jun"), 
      (parts.at(0) == "07", "Jul"), 
      (parts.at(0) == "08", "Aug"), 
      (parts.at(0) == "09", "Sep"), 
      (parts.at(0) == "10", "Oct"), 
      (parts.at(0) == "11", "Nov"), 
      (parts.at(0) == "12", "Dec")
    ).find(t => t.at(0)).at(1)
  }

  text(month + " " + parts.at(1))
}

#let format-date(start: "", end: "") = {
  if end == "" {
    parse-date(date: start) + " - Present"
  } else {
    parse-date(date: start) + " - " + parse-date(date: end)
  }
}

#let work-position(
  position: (
    title: "",
    start-date: "",
    end-date: ""
  ),
  should-show-date: false
) = {
  text(position.title)

  h(1fr)

  if should-show-date {
    format-date(
      start: position.start-date,
      end: position.end-date
    )
  }
}

#let work(
  company: "",
  href: "",
  positions: ((
    title: "",
    start-date: "",
    end-date: ""
  )),
  sections: (),
) = {
  text(weight: "bold", company) + " - " + underline(link("https://" + href, href))

  if positions.len() == 1 {
    h(1fr)

    let end = if "end-date" in positions.at(0) {
      positions.at(0).at("end-date")
    } else {
      ""
    }

    format-date(
      start: positions.at(0).start-date, 
      end: end
    )
  }

  let should-show-date = positions.len() > 1

  "\n"

  for position in positions {
    if "end-date" not in position {
      position = position + ("end-date": "")
    }

    work-position(position: position, should-show-date: should-show-date)
    "\n"
  }

  for section in sections {
    v(-0.4em)
    grid(
      columns: (8pt, 1fr),
      "•",
      section
    );
  }
}


#let education(
  institution: "",
  degree: "",
  start-date: "",
  end-date: "",
  relevant-courses: ()
) = {
  text(weight: "bold", institution)

  "\n"

  text(degree)
  
  h(1fr)

  "Started " + parse-date(date: start-date) + " - Expected " + parse-date(date: end-date)

  "\n"

  if relevant-courses.len() > 0 {
   text(weight: "bold", "Relevant Courses") + " - " + relevant-courses.join(", ")
  }
}

#let skills(
  header: "",
  skills: ()
) = {
  text(weight: "bold", header) + " - " + skills.join(", ")
}