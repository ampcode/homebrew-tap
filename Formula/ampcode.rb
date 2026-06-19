class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781902708-g67a1e9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781902708-g67a1e9/amp-darwin-arm64"
      sha256 "34b66a194ddf1cbfcaaae4cb5a1bd0568ca281fe4bdd99abe5864f21a1d7c29c"
    else
      url "https://static.ampcode.com/cli/0.0.1781902708-g67a1e9/amp-darwin-x64"
      sha256 "c3492b6166099f4cdf9a9a4ef9ab8495562916bf97d1b10a6e7eab520172ad63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781902708-g67a1e9/amp-linux-arm64"
      sha256 "dab7f64800faf79a82e2093ee0694e839a8e65d17cdf25c70e72d30b468a309a"
    else
      url "https://static.ampcode.com/cli/0.0.1781902708-g67a1e9/amp-linux-x64"
      sha256 "a269f14db3007042c330de9c79a60ca609a468b4557e316821c03aa582abdf9c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
