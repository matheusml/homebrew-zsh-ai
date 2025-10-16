class ZshAi < Formula
  desc "Lightweight AI assistant for your terminal"
  homepage "https://github.com/matheusml/zsh-ai"
  url "https://github.com/matheusml/zsh-ai/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "ee171e193ee3a8def44f81cbd6bc2dbfeb773ae137a92bf9bf871d1708e829dd"
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
