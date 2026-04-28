#import "@preview/dovenv:0.1.0": parse-env
#import "@preview/one-liner:0.3.0": fit-to-width

#show link: set text(fill: blue)
#let hrule = line(length: 100%, stroke: 0.4pt)

#let env = parse-env(read("../.env"))

#let name = env.NAME
#let location = env.LOCATION
#let email = env.EMAIL
#let github = env.GITHUB
#let linkedin = env.LINKEDIN
#let phone = env.PHONE
#let personal-site = env.PERSONAL_SITE

#let contact-info = (
  (email, "mailto:" + email, false),
  (phone, "tel:" + phone, false),
  (linkedin, "https://" + linkedin, false),
  (github, "https://" + github, false),
  (personal-site, "https://" + personal-site, true),
)

#let contact-info-content = contact-info.map(entry =>
  if entry.at(2) {
    underline(link(entry.at(1), entry.at(0)))
  } else {
    link(entry.at(1), entry.at(0))
  }
).join("   |   ")

#set align(center)

= #name

#v(5pt)

#box(width: 90%)[
  #fit-to-width[
    #contact-info-content
  ]
]

#set align(left)

#hrule