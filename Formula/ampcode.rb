class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781102632-gaaab69"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781102632-gaaab69/amp-darwin-arm64"
      sha256 "ec040b84fb9a92e9a96f71e0368a9953fedb78aa0ba185133074837b99a16d29"
    else
      url "https://static.ampcode.com/cli/0.0.1781102632-gaaab69/amp-darwin-x64"
      sha256 "9106ab7865056a4f769b1d792607f93861f544a322c4c744d9b40caa9ffb9949"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781102632-gaaab69/amp-linux-arm64"
      sha256 "424bb4e849c3e91d02833782cd7e8fd43b153f6337e3cd2bea932a93cec9fe6b"
    else
      url "https://static.ampcode.com/cli/0.0.1781102632-gaaab69/amp-linux-x64"
      sha256 "bccb8d4e438bad017169a8886949876f08a3538b48f0192e4e735bbb9502ac13"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
