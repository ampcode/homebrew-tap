class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793606440-g4c7784"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793606440-g4c7784/amp-darwin-arm64"
      sha256 "661fb42e8e4830031a335a340b27754467299a1dafda8f6dd0e14662dd2f2a93"
    else
      url "https://static.ampcode.com/cli/0.0.1793606440-g4c7784/amp-darwin-x64"
      sha256 "0dbd7a1ddd7c516bfb766083b72b2eeb7a65516ed5a4552e8fbe480660d1e639"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793606440-g4c7784/amp-linux-arm64"
      sha256 "1cc1dc4d338d2d7f581139e57a7339c29b4834c8c00eb7642879ece94e155baf"
    else
      url "https://static.ampcode.com/cli/0.0.1793606440-g4c7784/amp-linux-x64"
      sha256 "fb847fd14838dbe8e03650fe6869d734a092c1d1ef4862e24b6b4e7748e9ff31"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
