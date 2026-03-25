class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774471662-g40b89f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774471662-g40b89f/amp-darwin-arm64"
      sha256 "e7f493ff3ffde41be983e679bb5f8f9921ce9d2bd8c962248c3ebb598cb0f301"
    else
      url "https://static.ampcode.com/cli/0.0.1774471662-g40b89f/amp-darwin-x64"
      sha256 "c31af0544fa941d127162a466288cef16b9a58dd790bc231b45bd345db737b49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774471662-g40b89f/amp-linux-arm64"
      sha256 "d16073a9ac7d711a8be1bb370e736cf15b3787658a851b0a0b1b2567c599fa8e"
    else
      url "https://static.ampcode.com/cli/0.0.1774471662-g40b89f/amp-linux-x64"
      sha256 "c6997bf85f72cdfb9d5f30fbae857d994122d1ba19f598ab338fa7c38a0e7ad9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
