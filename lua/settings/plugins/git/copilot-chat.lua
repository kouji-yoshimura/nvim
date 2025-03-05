return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "zbirenbaum/copilot.vim" }, -- or zbirenbaum/copilot.lua
    { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
  },
  build = "make tiktoken", -- Only on MacOS or Linux
  opts = {
    -- See Configuration section for options
  },
  -- See Commands section for default commands if you want to lazy load on them
  config = function()
    local select = require('CopilotChat.select')

    require('CopilotChat').setup {
      debug = true,
      prompts = {
        Explain = {
          prompt = '/COPILOT_EXPLAIN カーソル上のコードの説明を段落をつけて書いてください。',
        },
        Review = {
          prompt = '/COPILOT_REVIEW カーソル上のコードをレビューしてください。日本語で返答をお願いします。',
        },
        Tests = {
          prompt = '/COPILOT_TESTS カーソル上のコードの詳細な単体テスト関数を書いてください。',
        },
        Fix = {
          prompt = '/COPILOT_FIX このコードには問題があります。バグを修正したコードに書き換えてください。',
        },
        Optimize = {
          prompt = '/COPILOT_REFACTOR 選択したコードを最適化し、パフォーマンスと可読性を向上させてください。',
        },
        Docs = {
          prompt = '/COPILOT_REFACTOR 選択したコードのドキュメントを書いてください。ドキュメントをコメントとして追加した元のコードを含むコードブロックで回答してください。使用するプログラミング言語に最も適したドキュメントスタイルを使用してください（例：JavaScriptのJSDoc、Pythonのdocstringsなど）',
        },
        FixDiagnostic = {
          prompt = 'ファイル内の次のような診断上の問題を解決してください：',
          selection = select.diagnostics,
        }
      }
    }
  end
}
