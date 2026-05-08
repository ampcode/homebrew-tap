class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778212565-g89cbec"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778212565-g89cbec/amp-darwin-arm64"
      sha256 "6ad985232a92b963cd7cb21cd11130df2de458b8a53e895e159d7cce8ebde899"
    else
      url "https://static.ampcode.com/cli/0.0.1778212565-g89cbec/amp-darwin-x64"
      sha256 "ed25999f21af45de2ccfd2cef53b21b3260581b214078abce25957b72eecfc28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778212565-g89cbec/amp-linux-arm64"
      sha256 "146716bbc5975367a17592e45af9435e1c5a2b4eff5640adb8eaeed1b4b51992"
    else
      url "https://static.ampcode.com/cli/0.0.1778212565-g89cbec/amp-linux-x64"
      sha256 "05d60b6c4621e08fd9df4c69f0486c943ade905a207bde0e52ebbd9646e478ab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
