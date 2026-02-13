return {
  {
    name = "Setup Test",
    role = "user",
    opts = { auto_submit = false },
    content = function()
      -- Enable YOLO mode for approvals (auto-accept changes and save buffers)
      local approvals = require("codecompanion.interactions.chat.tools.approvals")
      approvals:toggle_yolo_mode()

      -- Instructions for the LLM
      return [[### Instructions

Your instructions here

### Steps to Follow

You are required to write code following the instructions provided above and test the correctness by running the designated test suite. Follow these steps exactly:

1. Update the code in file #{buffer}{watch} using the @{insert_edit_into_file} tool
2. Then use the @{cmd_runner} tool to run the test suite with `<test_cmd>` (do this after you have updated the code)
3. Make sure you trigger both tools in the same response

We'll repeat this cycle until the tests pass. Ensure no deviations from these steps.]]
    end,
  },
  -- Add more prompts here...
  {
    name = "Prepare Corporate Response",
    role = "user",
    opts = { auto_submit = false },
    content = function()
      local approvals = require("codecompanion.interactions.chat.tools.approvals")
      approvals:toggle_yolo_mode()

      -- Instructions for the LLM
      return [[### Instructions

Your instructions here

### Steps to Follow

I'm drafting a corporate response that I am going to  send to some one leadership. Please revise it using the following rules:

1. Make the message more professional and polished.
2. Keep it easy to understand — simplify wording where helpful.
3. Maintain my personality, tone, and natural communication style. Do NOT make it sound robotic or overly formal.
4. If something is unclear or you need more context, ask me questions before finalizing the response.
5. Don’t change the meaning of what I'm saying; just improve clarity and flow.

After revising, provide: 
- A polished version ready to be sent/reviewed.
- A brief explanation of the changes you made and why, so I can understand your revisions.

      ]]
    end,
  },
}
