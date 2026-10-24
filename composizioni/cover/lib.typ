// =================================================================================================
//
// Copyright (c) 2026 Ilya Snegov (aka Sierra Arn)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// =================================================================================================
// composizioni/cover/lib.typ
// =================================================================================================

#import "01-cover.typ": cover-page

#let meta = toml("../../metadata.toml")

/// **Description:**
///
/// Generates a cover document for a musical work.
///
/// Configures the page dimensions, margins, typography, and document metadata,
/// using a 1920 × 1080 pt page size, 6 cm margins, the Libertinus Serif font,
/// a 32 pt base font size, and English as the document language.
///
/// Constructs a `datetime` value from the date specified in the document
/// metadata and sets the document title, author, and date.
///
/// Generates a cover page displaying the work's opus designation, number,
/// title, instrument designation, author, and date.
///
/// **Parameters:**
/// - `number`: `content` or `none` (the number of the musical work within the collection).
/// - `title`: `content` or `none` (the title of the musical work).
/// - `instruments`: `content` or `none` (the instrument or instruments for which the work is written).
/// - `author`: `content` (the author's name or pseudonym, defaulting to `meta.author.display_name`).
/// - `collection`: `content` (the opus designation to which the work belongs, defaulting to `meta.work.collection`).
#let cover(
    number: none,
    title: none,
    instruments: none,
    author: meta.author.display_name,
    collection: meta.work.collection,
) = {
    set page(
        width: 1920pt,
        height: 1080pt,
        margin: (top: 6cm, bottom: 6cm, left: 6cm, right: 6cm),
    )

    set text(
        font: "Libertinus Serif",
        size: 32pt,
        lang: "en",
    )

    let date = datetime(
        year: meta.date.year,
        month: meta.date.month,
        day: meta.date.day,
    )

    set document(
        title: [No. #number: #title],
        author: author,
        date: date,
    )

    cover-page(
        collection: collection,
        number: number,
        title: title,
        instruments: instruments,
        author: author,
        date: date,
    )
}

// =================================================================================================
