<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    
    <pattern>
        <rule context="location[contains(., 'AU')]">
            <assert test="number(@lon) gt 100">
                Australian locations must have a longitude greater than 100
            </assert>
            <assert test="number(@lat) lt 0">
                Australian locations must be in the southern hemisphere (Latitude must be less than 0)
            </assert>
        </rule>
        <rule context="location[contains(., 'USA')]">
            <assert test="number(@lon) lt 0">
                American locations must be in the western hemisphere (Longitude must be less than 0)
            </assert>
            <assert test="number(@lat) gt 0">
                American locations must be in the northern hemisphere (Latitude must be greater than 0)
            </assert>
        </rule>
    </pattern>
</schema>