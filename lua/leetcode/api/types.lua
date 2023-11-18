---@alias interpret.state
---| "PENDING"
---| "STARTED"
---| "SUCCESS"
---| "FAILURE"

---@class lc.Interpreter.item
---@field title string
---@field hl string
---@field submission boolean
---@field success boolean

---@class lc.Interpreter.Response
---@field status_code integer
---@field lang string
---@field run_success boolean
---@field compile_error string
---@field full_compile_error string
---@field full_runtime_error string
---@field status_runtime string
---@field memory integer
---@field code_answer string[]
---@field expected_code_answer string[]
---@field code_output table
---@field std_output_list table
---@field task_finish_time integer
---@field task_name string
---@field correct_answer boolean
---@field total_correct any
---@field total_testcases any
---@field runtime_percentile any
---@field status_memory string
---@field memory_percentile any
---@field pretty_lang string
---@field submission_id string
---@field status_msg string
---@field state interpret.state
---@field case_idx integer
---@field _ lc.Interpreter.item

--------------------------------------------
--- Runtime Error | 15
--------------------------------------------
---@class lc.Interpreter.Response.runtime_error
---@field status_code number
---@field lang string
---@field run_success boolean
---@field runtime_error string
---@field full_runtime_error string
---@field status_runtime string
---@field memory number
---@field code_answer table
---@field code_output table
---@field std_output_list table
---@field elapsed_time number
---@field task_finish_time number
---@field task_name string
---@field total_correct any
---@field total_testcases any
---@field runtime_percentile any
---@field status_memory string
---@field memory_percentile any
---@field pretty_lang string
---@field submission_id string
---@field status_msg string
---@field state string
---@field question_id string
---@field compare_result string
---@field std_output string
---@field last_testcase string
---@field expected_output string
---@field finished boolean
---@field _ lc.Interpreter.item

---@alias lc.runtime_error lc.Interpreter.Response.runtime_error

--------------------------------------------
--- Runtime | 10
--------------------------------------------
---@class lc.Interpreter.Response.runtime
---@field status_code number
---@field lang string
---@field run_success boolean
---@field status_runtime string
---@field memory number
---@field display_runtime string
---@field code_answer table
---@field code_output table
---@field std_output_list table
---@field elapsed_time number
---@field task_finish_time number
---@field task_name string
---@field expected_status_code number
---@field expected_lang string
---@field expected_run_success boolean
---@field expected_status_runtime string
---@field expected_memory number
---@field expected_code_answer table
---@field expected_code_output table
---@field expected_std_output_list table
---@field expected_elapsed_time number
---@field expected_task_finish_time number
---@field expected_task_name string
---@field correct_answer boolean
---@field compare_result string
---@field total_correct number
---@field total_testcases number
---@field runtime_percentile number | nil
---@field status_memory string
---@field memory_percentile number | nil
---@field pretty_lang string
---@field submission_id string
---@field status_msg string
---@field state string
---@field lcnvim_is_submission boolean
---@field lcnvim_title string
---@field lcnvim_hl string
---@field _ lc.Interpreter.item

---@alias lc.runtime lc.Interpreter.Response.runtime

--------------------------------------------
--- Compile Error | 20
--------------------------------------------
---@class lc.Interpreter.Response.compile_error
---@field status_code number
---@field lang string
---@field run_success boolean
---@field compile_error string
---@field full_compile_error string
---@field status_runtime string
---@field memory number
---@field code_answer table
---@field code_output table
---@field std_output_list table
---@field task_finish_time number
---@field task_name string
---@field total_correct number | nil
---@field total_testcases number | nil
---@field runtime_percentile number | nil
---@field status_memory string
---@field memory_percentile number | nil
---@field pretty_lang string
---@field submission_id string
---@field status_msg string
---@field state string
---@field _ lc.Interpreter.item

---@alias lc.compile_error lc.Interpreter.Response.compile_error

--------------------------------------------
--- Time Limit Exceeded | 13, 14
--------------------------------------------
---@class lc.Interpreter.Response.limit.exceeded
---@field status_code number
---@field lang string
---@field run_success boolean
---@field status_runtime string
---@field memory number
---@field code_answer table
---@field code_output table
---@field std_output_list table
---@field std_output string
---@field task_finish_time number
---@field task_name string
---@field total_correct number | nil
---@field total_testcases number | nil
---@field runtime_percentile number | nil
---@field status_memory string
---@field memory_percentile number | nil
---@field pretty_lang string
---@field submission_id string
---@field status_msg string
---@field state string
---@field compare_result string | nil
---@field question_id string | nil
---@field elapsed_time number | nil
---@field last_testcase string | nil
---@field expected_output string | nil
---@field finished boolean | nil
---@field _ lc.Interpreter.item

---@alias lc.limit_exceeded_error lc.Interpreter.Response.limit.exceeded

--------------------------------------------
--- Time Limit Exceeded | 13, 14
--------------------------------------------
---@class lc.Interpreter.Response.internal.error
---@field status_code integer
---@field status_msg string
---@field state interpret.state

---@alias lc.internal_error lc.Interpreter.Response.internal.error

--------------------------------------------
--- Interpreter responses
--------------------------------------------
---@alias lc.interpreter_response
---| lc.runtime
---| lc.runtime_error
---| lc.compile_error
---| lc.limit_exceeded_error
---| lc.internal_error

--------------------------------------------
--- Code snipppet
--------------------------------------------
---@class lc.QuestionCodeSnippet
---@field lang string
---@field lang_slug string
---@field code string

---@alias code_snippet lc.QuestionCodeSnippet

--------------------------------------------
--- Metadata Param
--------------------------------------------
---@class lc.QuestionResponse.metadata.param
---@field name string
---@field type string

---@alias metadata_param lc.QuestionResponse.metadata.param

--------------------------------------------
--- Metadata Return
--------------------------------------------
---@class lc.QuestionResponse.metadata.return
---@field type string
---@field size integer

---@alias metadata_return lc.QuestionResponse.metadata.return

--------------------------------------------
--- Metadata
--------------------------------------------
---@class lc.QuestionResponse.metadata
---@field manual boolean
---@field name string
---@field database boolean
---@field params metadata_param[]
---@field return metadata_return

---@alias lc.metadata lc.QuestionResponse.metadata

--------------------------------------------
--- Question Response
--------------------------------------------
---@class lc.QuestionResponse.similar
---@field difficulty "Easy" | "Medium" | "Hard"
---@field title_slug string
---@field title string
---@field paid_only boolean

---@class lc.QuestionResponse
---@field id integer
---@field frontend_id integer
---@field title string
---@field title_slug string
---@field is_paid_only boolean
---@field difficulty string
---@field likes integer
---@field dislikes integer
---@field category_title string
---@field content string
---@field mysql_schemas string[]
---@field data_schemas string[]
---@field code_snippets code_snippet[]
---@field testcase_list string[]
---@field meta_data lc.metadata
---@field stats question_stats
---@field topic_tags lc.topic_tag[]
---@field hints table[]
---@field similar lc.QuestionResponse.similar

---@alias lc.question_res lc.QuestionResponse

---@class lc.topic_tag
---@field name string
---@field slug string

---@class question_stats
---@field acRate string
---@field totalAccepted string
---@field totalAcceptedRaw string
---@field totalSubmission string
---@field totalSubmissionRaw string

--------------------------------------------
--- Submission
--------------------------------------------
---@class lc.Interpreter.Response.submission
---@field status_code number
---@field lang string
---@field run_success boolean
---@field status_runtime string
---@field memory number
---@field display_runtime string
---@field question_id string
---@field elapsed_time number
---@field compare_result string
---@field code_output string
---@field std_output string
---@field last_testcase string
---@field expected_output string
---@field task_finish_time number
---@field task_name string
---@field finished boolean
---@field total_correct number
---@field total_testcases number
---@field runtime_percentile number | nil
---@field status_memory string
---@field memory_percentile number | nil
---@field pretty_lang string
---@field submission_id string
---@field input_formatted string
---@field input string
---@field status_msg string
---@field state string
---@field _ lc.Interpreter.item

---@alias lc.submission lc.Interpreter.Response.submission

--------------------------------------------
--- UserStatus
--------------------------------------------
---@class lc.UserStatus
---@field name string
---@field is_signed_in boolean
---@field is_premium boolean
---@field is_verified boolean
---@field id integer

--------------------------------------------
--- Statistics
--------------------------------------------
---@class lc.Stats.CalendarData
---@field active_years table
---@field dcc_badges table
---@field streak number
---@field submission_calendar table<string, integer>
---@field total_active_days number

---@class lc.Stats.QuestionCount
---@field count number
---@field difficulty string

---@class lc.Stats.SolvedBeat
---@field difficulty string
---@field percentage number

---@class lc.Stats.SubmissionStat
---@field acSubmissionNum table

---@class lc.Stats.Res
---@field questions_count table<lc.Stats.QuestionCount>
---@field submit_stats lc.Stats.SubmissionStat

--------------------------------------------
--- Skills
--------------------------------------------
---@class lc.Skills.Skill
---@field tag string
---@field slug string
---@field problems_solved integer

---@class lc.Skills.Res
---@field advanced lc.Skills.Skill
---@field intermediate lc.Skills.Skill
---@field fundamental lc.Skills.Skill

--------------------------------------------
--- Languages
--------------------------------------------
---@class lc.Languages.Res
---@field advanced {tag: string, slug: string, problems_solved: number}[]
---@field intermediate {tag: string, slug: string, problems_solved: number}[]
---@field fundamental {tag: string, slug: string, problems_solved: number}[]

--------------------------------------------
--- Error
--------------------------------------------
---@class lc.err
---@field code integer
---@field err string
---@field out string
---@field response table
---@field status integer
---@field msgs string[]|nil
