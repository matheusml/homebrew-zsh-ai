class ZshAi < Formula
  desc "Lightweight AI assistant for your terminal"
  homepage "https://github.com/matheusml/zsh-ai"
  url "https://github.com/matheusml/zsh-ai/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "6d696e04b6fe5384ccdf501904da2f96da9c9584606eac3ff4ea0bb3158a1669"
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
