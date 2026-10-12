class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791835240-g8bc94e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791835240-g8bc94e/amp-darwin-arm64"
      sha256 "a2a9b9adf8e8bfd60c607c55fce9123e0e41bc8542fae3c835d24b0fe45bc035"
    else
      url "https://static.ampcode.com/cli/0.0.1791835240-g8bc94e/amp-darwin-x64"
      sha256 "e9243f9fd08955d9a73fbf18c3a6f61fd6616cef6e032783ede3099590457415"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791835240-g8bc94e/amp-linux-arm64"
      sha256 "1d51775716b76b29434af4774425e32c9c86d6f75baddf99f06279280b418624"
    else
      url "https://static.ampcode.com/cli/0.0.1791835240-g8bc94e/amp-linux-x64"
      sha256 "bd6c3fea4603d88be08e2c5d7d561885412a72bd7bb5e16f34e330b0b38afe4f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
