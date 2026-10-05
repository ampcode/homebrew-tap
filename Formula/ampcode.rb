class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791173172-g3e7691"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791173172-g3e7691/amp-darwin-arm64"
      sha256 "052f02b42979d366f660b10d9d7b2f16faff6803a315246d87e496af5859b8a4"
    else
      url "https://static.ampcode.com/cli/0.0.1791173172-g3e7691/amp-darwin-x64"
      sha256 "32c8d1575958603498c4f9b5758f8d6691bf014331f2a0c652a23222f76d127f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791173172-g3e7691/amp-linux-arm64"
      sha256 "a77e46d6a938a2d1713c971757ef826bf0b66ba76eb0bfc44980eefc4ad6986b"
    else
      url "https://static.ampcode.com/cli/0.0.1791173172-g3e7691/amp-linux-x64"
      sha256 "1f882c2e5775a2684dbcccf0c6ad04ab722bc407d20d0ebbf57277725724e6e3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
