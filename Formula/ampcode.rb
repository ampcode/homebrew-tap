class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795386756-g408c18"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795386756-g408c18/amp-darwin-arm64"
      sha256 "98c35d9cea42d7091ad3528a41f87686e89384a9c3a18977370a54ae3f379f4c"
    else
      url "https://static.ampcode.com/cli/0.0.1795386756-g408c18/amp-darwin-x64"
      sha256 "2fbed5cca0fb3e5849fc49e3d01bd7bbea0abbdd313904ec421b31ef130351ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795386756-g408c18/amp-linux-arm64"
      sha256 "58221125834fa6f2584868b9111a4c5081bec477b7a342c44f078d02e840a66b"
    else
      url "https://static.ampcode.com/cli/0.0.1795386756-g408c18/amp-linux-x64"
      sha256 "7ea01215d60c66f4906ccf580786be1a880b1a8ac6590b14ffa439d784d9d396"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
