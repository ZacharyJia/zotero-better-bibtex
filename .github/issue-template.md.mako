---
name: ${template.title}
about: ${template.about}
% if template.labels:
labels: ${template.labels}
% endif
---
<% check = iter(range(1,20)) %>
<!--
*Please verify **all** of the below before submitting*:

${next(check)}. you have picked the right category for the issue in the previous screen.
% if template.name == 'generic':
   If you haven't seen a choice to pick, please log in before submitting the issue.
% endif
${next(check)}. You are on the latest release of Zotero
${next(check)}. in the Zotero addons screen you can see that you have the latest release of BBT (https://github.com/retorquere/zotero-better-bibtex/releases/latest)
% if template.name in ['Key_generation', 'Import', 'Export', 'General_error']:
${next(check)}. you are posting a single bug or feature request.
% elif template.name == 'Question':
${next(check)} you are posting a single question.
% endif
${next(check)}. the issue has a subject that succinctly describes the problem or question.
${next(check)}. you are available for follow-up questions and testing.
% if template.name == 'Import':
${next(check)}. you have attached a copy of the BibTeX you were trying to import to this issue.
% endif
% if template.name in ['Key_generation', 'Export']:
${next(check)}. you have included an error-report ID here generated by reproducing the problem, selecting the problematic reference(s), right-clicking, and submitting an BBT error report from that popup menu
${next(check)}. you have included the actual output you got from exporting the items you sent in the debug log, not simplified fictional output, and a sample of you you want it to look, again based on the actual items under consideration
% elif template.name in ['General_error', 'Import', 'Export']:
${next(check)}. you have included an error-report ID here generated by restarting Zotero with debugging enabled (Help -> Debug Output Logging -> Restart with logging enabled), reproducing your problem, and selecting "Report Better BibTeX error" from the help menu.
% endif

Picking the right issue category is really important. Each category (${', '.join([f'`{t.name.replace("_", " ")}`' for t in templates])}) has different instructions for gathering the data necessary required to resolve the issue you are experiencing

% if template.name in ['Key_generation', 'Export']:
The error report is important; it gives me your current BBT settings and a copy of the problematic reference as a test case so I can best replicate your problem. Without it, I'm effectively blind.

% elif template.name in ['General_error']:
The error-report is important; it gives me your current BBT settings and a log of what Zotero was doing at the time of error. Without it, I'm effectively blind.

% elif template.name in ['Import']:
The error-report is important; it gives me your current BBT settings and a log of what Zotero was doing at the time of import. Without it, I'm effectively blind.

% endif
-->

% if template.name != 'Question':
**Report ID:**

% endif
% if template.name in ['Export']:
**Exporter used:**

% elif template.name in ['Import']:
**Full Bib(La)TeX item you are trying to import:**

% endif
% if template.name == 'Question':
**Your question/suggestion:**
% else:
**Expected behavior:**

**Actual behavior:**
% endif
