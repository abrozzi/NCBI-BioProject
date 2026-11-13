# Lib

library(stringr)
library(janitor)
library(magrittr)

# Main

bp_flat <- bp %>%
  jsonlite::flatten(recursive = TRUE) %>%
  janitor::clean_names()

clean_bioproject_names <- function(nm) {
  nm %>%
    str_remove("^Project\\.Project\\.") %>%
    str_replace("^ProjectID\\.", "id.") %>%
    str_replace("^ProjectDescr\\.", "descr.") %>%
    str_replace("^ProjectType\\.ProjectTypeSubmission\\.", "submission.") %>%
    str_replace("^ProjectType\\.ProjectTypeTopAdmin\\.", "top_admin.") %>%
    str_replace("^ProjectType\\.ProjectTypeTopSingleOrganism\\.", "top_single_org.") %>%
    str_replace("^Submission\\.", "submission_meta.") %>%
    str_replace("^ProjectLinks\\.", "links.") %>%
    str_replace_all("\\bOrganism\\b", "org") %>%
    str_replace_all("\\bBiologicalProperties\\b", "bio") %>%
    str_replace_all("\\bDescription\\b", "desc") %>%
    str_replace_all("\\bRelevance\\b", "rel") %>%
    str_replace_all("\\bAnnotationSource\\b", "annot_source") %>%
    str_replace_all("\\bSequenceSource\\b", "seq_source") %>%
    str_replace_all("\\bNomenclatureSource\\b", "nomen_source") %>%
    str_replace_all("\\bProjectReleaseDate\\b", "release_date") %>%
    str_replace_all("\\bExternalLink\\b", "external_link") %>%
    str_replace_all("\\bLocusTagPrefix\\b", "locus_tag_prefix") %>%
    str_replace_all("\\bUserTerm\\b", "user_term") %>%
    str_replace_all("\\bArchiveID\\b", "archive") %>%
    str_replace_all("\\bSecondaryArchiveID\\b", "secondary_archive_id") %>%
    str_replace_all("\\bCenterID\\b", "center_id") %>%
    str_replace_all("\\bLocalID\\b", "local_id") %>%
    str_replace_all("@", "") %>%
    str_replace_all("#text", "text") %>%
    str_replace_all("\\.", "_") %>%
    make_clean_names() %>%
    str_replace("^descr_desc$", "description") %>%
    str_replace("^descr_title$", "title") %>%
    str_replace("^descr_name$", "name")
}

new_names <- clean_bioproject_names(names(bp_flat))

colnames(bp_flat) <- new_names

save(bp_flat, file="/derived/bioproject.Rda")
