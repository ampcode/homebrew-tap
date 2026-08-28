class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787917317-g7bb8ca"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787917317-g7bb8ca/amp-darwin-arm64"
      sha256 "2fa8b0737954d72c7427acbc196c88aafedd62cb00b89bf8e933d5370d301543"
    else
      url "https://static.ampcode.com/cli/0.0.1787917317-g7bb8ca/amp-darwin-x64"
      sha256 "dcaa5de303f15325144df14469b6de4cec4719045ab1c15b1b1fa74eb216a99b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787917317-g7bb8ca/amp-linux-arm64"
      sha256 "5bc0383523661e04a0ca2023344e45e5847a5697e2df34247518d545b6249534"
    else
      url "https://static.ampcode.com/cli/0.0.1787917317-g7bb8ca/amp-linux-x64"
      sha256 "2d5324710796cb6da938254305693c589f68fee5426748c38c74d14c04027399"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
