# Live Controller!

Demo content from Mike Senn's TrailheaDX 2019 presentation. [Live Controller is a new Visualforce component](http://release-notes-dev.herokuapp.com/en-us/summer19/release-notes/rn_vf_live_controller.htm) that will live-update Visualforce pages with content from the Salesforce backend. No more stale data! No more conflicting formulas!

Table of contents:
* [DonationsPage](src/pages/DonationsPage.page), a Visualforce page that displays a list of records. When any record in the list updates, the map shown will rerender.
* [Volunteer_Distribution](src/pages/Volunteer_Distribution.page), a Visualforce page that shows a single record, but stores data in a controller extension.
* [DonationSiteExtension](src/classes/DonationSiteExtension.cls), the Apex extension. When the resetMe() method is called, data is reloaded.
* [Slides](slides.pptx) for the presentation.
