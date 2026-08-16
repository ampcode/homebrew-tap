class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786910444-gbc03aa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786910444-gbc03aa/amp-darwin-arm64"
      sha256 "4f478b7ca3252224794d9b877b63eda5ef07eb6a811621501cc37c73bfe837a6"
    else
      url "https://static.ampcode.com/cli/0.0.1786910444-gbc03aa/amp-darwin-x64"
      sha256 "6ff7dfeb8627d50467d76b5b0b9befdcb30ec15bbb8ce2bf1604ab6b21ec4e71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786910444-gbc03aa/amp-linux-arm64"
      sha256 "19fac9ee601ba900e83564a8349ae1db5b0c2e10bc9e7dccb84aa043b92ccdba"
    else
      url "https://static.ampcode.com/cli/0.0.1786910444-gbc03aa/amp-linux-x64"
      sha256 "7b4c293ab89202ead72d84397da675a8921e90690952882598775bb1be6f7a75"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
