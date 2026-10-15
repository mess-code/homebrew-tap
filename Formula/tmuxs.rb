class Tmuxs < Formula
  desc "Terminal picker for tmux sessions with an iTerm2 control-mode toggle"
  homepage "https://github.com/mess-code/tmuxs"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mess-code/tmuxs/releases/download/v0.1.0/tmuxs-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "70940f09d045f072888f3b12a2679d5d28e05d25c23de9d92d4070d0a031ca47"
    end
    on_intel do
      url "https://github.com/mess-code/tmuxs/releases/download/v0.1.0/tmuxs-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "ccd194c65dec6f55a046a8dacffc0a2841959e5b369f6274047b131b32e3bd6a"
    end
  end

  def install
    bin.install "tmuxs"
  end

  test do
    assert_match "tmuxs", shell_output("#{bin}/tmuxs --help")
  end
end
