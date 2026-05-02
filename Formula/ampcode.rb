class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777706852-g76c1b8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777706852-g76c1b8/amp-darwin-arm64"
      sha256 "eda85f72b3ea7c3c57723d598967f481122617708d16deb5ed2752ba8ccc7906"
    else
      url "https://static.ampcode.com/cli/0.0.1777706852-g76c1b8/amp-darwin-x64"
      sha256 "fbb930d77425e4dba47e891e3f4745479cbbab557a74d5b50594d63a2994e212"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777706852-g76c1b8/amp-linux-arm64"
      sha256 "c01308f07d3f85cc3693d46924f8d91198ad7c4d3bc7ac57233089f1fc62a35d"
    else
      url "https://static.ampcode.com/cli/0.0.1777706852-g76c1b8/amp-linux-x64"
      sha256 "cf45205f2e11e4dcaff3796bb0f775438f7010513e567b995d7d7e5c1863ba09"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
