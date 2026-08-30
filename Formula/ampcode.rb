class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788062443-gbd1430"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788062443-gbd1430/amp-darwin-arm64"
      sha256 "44d1292452c5cf3b9c048d8848ffc125f5c0d2c5eb15c1380614684baf37947a"
    else
      url "https://static.ampcode.com/cli/0.0.1788062443-gbd1430/amp-darwin-x64"
      sha256 "a08fd906f267b0db642c2d7a3326d4b3484ce6fa1907c9f6444b6efe3385b106"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788062443-gbd1430/amp-linux-arm64"
      sha256 "642671bfc981f0f87a3b47d7e45da190a7c9a007c502d2741eff5ab23c782450"
    else
      url "https://static.ampcode.com/cli/0.0.1788062443-gbd1430/amp-linux-x64"
      sha256 "7bef607c2fbccf97f1d797ad4b94c6afa6c7460fc6e3f40a505b36972bc03c87"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
