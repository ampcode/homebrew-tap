class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795161645-gc0fe70"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795161645-gc0fe70/amp-darwin-arm64"
      sha256 "a5fe245e53742d67e3a702e080e67b0d4359040d16133849acce4ad86e8ec1bb"
    else
      url "https://static.ampcode.com/cli/0.0.1795161645-gc0fe70/amp-darwin-x64"
      sha256 "38e00c8919a8fdc40f8a29b2f43280f38662d324db32b5b48a739fda260e1ab0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795161645-gc0fe70/amp-linux-arm64"
      sha256 "264e15b6fe49c0347906118589de2de66d6c339ee0839926b9bd6303af2d7538"
    else
      url "https://static.ampcode.com/cli/0.0.1795161645-gc0fe70/amp-linux-x64"
      sha256 "166cf8576c11304757e06790bce1c5bb905b4bc3ab0559820eb99ab8fda70dd0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
