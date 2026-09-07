class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788753631-g9d283c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788753631-g9d283c/amp-darwin-arm64"
      sha256 "09e9770b74c2d9cd329a08fe82fb92280785937bed4506011fd0968ec8470985"
    else
      url "https://static.ampcode.com/cli/0.0.1788753631-g9d283c/amp-darwin-x64"
      sha256 "11233add8000c1d8b6b1d402ad5a83a8d6b442f71cc371baba85c317e51defe5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788753631-g9d283c/amp-linux-arm64"
      sha256 "e257c1ebb648a555fc1da3085b428ef381cdbb2f971d58b7db4dc2d2b9261725"
    else
      url "https://static.ampcode.com/cli/0.0.1788753631-g9d283c/amp-linux-x64"
      sha256 "d6838ffebb4c84b6c6e0af23d7df55a5bfa710714f6eaa7b81a0eefae66f97b3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
