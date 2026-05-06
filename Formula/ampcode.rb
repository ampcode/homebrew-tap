class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778075315-gab5686"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778075315-gab5686/amp-darwin-arm64"
      sha256 "fee2f1b620417d762bc7abf0344b86595b5dadf2b26eaa1763b33b34bdecfb7e"
    else
      url "https://static.ampcode.com/cli/0.0.1778075315-gab5686/amp-darwin-x64"
      sha256 "dc5531283b39ab8dd0d45e05043906283f8a03bd4451e7060d99ac90f46cf1b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778075315-gab5686/amp-linux-arm64"
      sha256 "91bd707c32462190b827a16100571bf259442d474ca1facb1254315f80decb24"
    else
      url "https://static.ampcode.com/cli/0.0.1778075315-gab5686/amp-linux-x64"
      sha256 "7e6df863a85c5bc77ddb6b47e47ab4068c4f2283ea8a31e031d539ec404b694e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
