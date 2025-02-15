#!/usr/bin/env nextflow
/*
========================================================================================
    nf-aivseeker
========================================================================================
    Github : https://github.com/cidgoh/AIV_seeker
    Website: https://cidgoh.ca/
----------------------------------------------------------------------------------------
*/

nextflow.enable.dsl = 2

/*
========================================================================================
    VALIDATE & PRINT PARAMETER SUMMARY
========================================================================================
*/

WorkflowMain.initialise(workflow, params, log)

/*
========================================================================================
    NAMED WORKFLOW FOR PIPELINE
========================================================================================
*/

include { AIVSEEKER } from './workflows/aivseeker'

//
// WORKFLOW: Run main nf-core/bcellmagic analysis pipeline
//
workflow NF_AIVSEEKER {
    AIVSEEKER ()
}

/*
========================================================================================
    RUN ALL WORKFLOWS
========================================================================================
*/


workflow {
    NF_AIVSEEKER ()
}

/*
========================================================================================
    THE END
========================================================================================
*/