class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779367453-g8905d8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779367453-g8905d8/amp-darwin-arm64"
      sha256 "7613ab54aa39ceaca60abaecefd0bcb5859dac33cdfa04c8f6d3e653e0a4ec6d"
    else
      url "https://static.ampcode.com/cli/0.0.1779367453-g8905d8/amp-darwin-x64"
      sha256 "d3c407a7fdfeb8e80fe6947326caec3c5d757c3214a0f906cb1da7e40555dd47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779367453-g8905d8/amp-linux-arm64"
      sha256 "98643a513c371b8d5dfc9bdbe0aa9bd25d1241a5293c93b05c20c047967b58b5"
    else
      url "https://static.ampcode.com/cli/0.0.1779367453-g8905d8/amp-linux-x64"
      sha256 "3186fa96b85f1d1b4431ed12b809efca277516a3d4ed592c35fadc496ee3d7a2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
