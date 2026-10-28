class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793160055-gbd79f2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793160055-gbd79f2/amp-darwin-arm64"
      sha256 "6af61933c542adee02753e1bfa7daf63bb7f293de8e7bb13d237d027cb310ae7"
    else
      url "https://static.ampcode.com/cli/0.0.1793160055-gbd79f2/amp-darwin-x64"
      sha256 "dcfb0bb21721ef56347e8b9fc07dee4b51abff4982342a1fa5b3ba623ee1ba73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793160055-gbd79f2/amp-linux-arm64"
      sha256 "e8d0271e43992cf4a5b7cdfc45f97e21fee7ce3eee76f4b3fa8ede788e5facb7"
    else
      url "https://static.ampcode.com/cli/0.0.1793160055-gbd79f2/amp-linux-x64"
      sha256 "852d6e5797e5b73d5d8a4cb8754ec149c08cd284de72b7d5a046a3a7fdeac477"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
