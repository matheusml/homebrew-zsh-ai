class ZshAi < Formula
  desc "Lightweight AI assistant for your terminal"
  homepage "https://github.com/matheusml/zsh-ai"
  url "https://github.com/matheusml/zsh-ai/archive/refs/tags/v0.7.3.tar.gz"
  sha256 "3b178e5e9789d1db1c8264c43d07231685f4846e4cd87f6e9a9436737e0a44b2"
  license "MIT"

  def install
    pkgshare.install "zsh-ai.plugin.zsh"
    pkgshare.install "lib"
    doc.install "README.md"
  end

  def caveats
    <<~EOS
      To use zsh-ai, add the following to your ~/.zshrc:
        source #{HOMEBREW_PREFIX}/share/zsh-ai/zsh-ai.plugin.zsh

      Don't forget to set your Anthropic API key:
        export ANTHROPIC_API_KEY="your-api-key-here"
    EOS
  end

  test do
    assert_path_exists pkgshare/"zsh-ai.plugin.zsh"
    assert_path_exists pkgshare/"lib"
  end
end
