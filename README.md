# Smart Lists Samples for Spring 24 3.4

In this repository, you will find several predefined Smart Lists covering all the use cases of the component.

## SLHomeLeads: List of Leads

This list includes:
- Hyperlinks to Detail record page
- SOSL Search on record
- Use of the RecordType field (if no record types are defined on Lead in your org, you need to delete the field definition SLHomeLeads_RecordType)
- Display HTML formula as an image. Requires a field called Visual_Rating__c displaying a variable image depending on the lead rating (field definition = SLHomeLeads_Rating)
- Use of the Owner field
- Display clickable url labels (Company and Website must be populated on the test records)
- Standard actions Create, Update, and Delete records with Record Type support if available on Lead
- Custom Screenflow actions for assigning leads to a new owner

This list can be added to the Home Page

## STHomeLeads: Tiles of Leads

This list includes:
- Customizable Tile Header on Lead Name and Status
- Dynamic Badge Styling for Lead Rating. Pre-requisite, create a text formula field for the styling:
    - Label: Rating Badge Style
    - Name: Rating_Badge_Style__c
    - Type: Formula / Text
    - Formula:  IF( ISPICKVAL(Rating, "Hot"), "bc:#2e844a;tc:white", 
                IF(ISPICKVAL(Rating, "Warm"), bc:#feca39;tc:black",
                "bc:#2172d5;tc:white"))
- Hyperlinks to Detail record page
- SOSL Search on record
- Use of the RecordType field (if no record types are defined on Lead in your org, you need to delete the field definition SLHomeLeads_RecordType)
- Use of the Owner field

This list can be added to the Home Page

## SLSearchLeads: Search list for Leads

This list includes:
- Dynamic Field Styling. Pre-requisite, create a text formula field for the styling:
    - Label: Rating Style
    - Field Name: Rating_Style__c
    - Formula: 
            IF ( ISPICKVAL( Rating , 'Hot'), "icn:utility:priority;icc:seagreen;icp:hidevalue",
            (IF ( ISPICKVAL( Rating , 'Warm'), "icn:utility:priority;icc:rgb(255, 215, 0);icp:hidevalue", 
            (IF ( ISPICKVAL( Rating , 'Cold'), "icn:utility:priority;icc:blue;icp:hidevalue",
                "icn:utility:question_mark;icp:hidevalue")))))
- Dynamic HTML of a cell. Pre-requisite, create a text formula field for the HTML:
    - Label: Rating Style
    - Field Name: Rating_Style__c
    - Formula:
           CASE(Rating,
            "Hot", IMAGE("/resource/GraphicsPackNew/silk/16/silk/flag_green.png", "Hot"),
            "Warm", IMAGE("/resource/GraphicsPackNew/silk/16/silk/flag_yellow.png", "Warm"),
            "Cold", IMAGE("/resource/GraphicsPackNew/silk/16/silk/flag_blue.png","Cold"), "")
- Filters Panel for search mode
- Records management parameters for search mode
- Custom action on retrieved records for adding them to a campaign

This list MUST be added to a Campaign Detail Page

## SLHomeApex: List based on an Apex Data Source

This list includes:
- Hyperlinks to Detail record page
- Custom Apex Data Source

This list can be added to the Home Page

## SLAccountCases: List of Cases of a parent Account

This list includes:
- Child list for a parent record
- Hyperlinks to Detail record pages
- Pre-defined filters
- Filtering records by SOQL Scopes: All, My, My Team
- Display related fields with lookup search in Quick Filters
- Text wrapping in cells for Case Subject and Description in case long texts are entered in these fields
- Use of the Owner field
- Standard actions Create, Update, and Delete records with Record Type support if available on Case
- Custom Auto-launched flow actions for closing and re-opening cases

This list MUST be added to an Account Detail Page

## SLAccountFiles: List of Files of a parent record

This list includes:
- Child list for a parent record
- File preview link
- SOSL Search on files content
- Edit Form
- Standard flies list actions: Preview File(s), Download File(s), Upload File, Upload New File Version, 
    View File Version, and Delete File
    Note: you need to add the corresponding custom permissions to your user to see these actions

This list MUST be added to a record Detail Page

## 	SLAccountApex: List based on an Apex Data Source retrieving data for a parent record

This list includes:
- Child list for a parent record
- Hyperlinks to Detail record page
- Custom Apex Data Source

This list MUST be added to an Account Detail Page

## SLContactsCaseAccount: List of Contacts related to the Account of a parent Case

This list includes:
- Child list for a parent record with an indirect relationship

This list MUST be added to a Case Detail Page

## SLFilesCaseAccount: List of Files related to the Account of a parent Case

This list includes:
- Child list for a parent record with an indirect relationship

This list MUST be added to a Case Detail Page

## Screenflow SLScreenflow: How to configure the lists in a screenflow

This flow includes:
- List of records with/without parent
- List of files with parent
- Validation that a minimum number of records have been selected before moving to the next screen
- Using selected records in flows from the SmartLists variables or with manually assigned variables