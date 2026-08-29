class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787961677-g372167"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787961677-g372167/amp-darwin-arm64"
      sha256 "eb68a122c357f52b0edc37960ad39533006ead68cfbac1f73d50d1bb9d17e24a"
    else
      url "https://static.ampcode.com/cli/0.0.1787961677-g372167/amp-darwin-x64"
      sha256 "652e380c2261f3c9d05b07ab773b7b86df5ce09320036830777508acb4d26301"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787961677-g372167/amp-linux-arm64"
      sha256 "1c1fa476d27c3328eb1979f11a1296f5af7b255a4d7913896cd90fca3b9a1c1f"
    else
      url "https://static.ampcode.com/cli/0.0.1787961677-g372167/amp-linux-x64"
      sha256 "1840388f67d827303f924400301fe90c79c9cc765ff973bfcd62f16dfdcff6b6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
