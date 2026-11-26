class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795680045-g9e093e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795680045-g9e093e/amp-darwin-arm64"
      sha256 "900bc10e150a980428c6590a314a6913bbb7b65aec64d390a18b9b9ea1ed6171"
    else
      url "https://static.ampcode.com/cli/0.0.1795680045-g9e093e/amp-darwin-x64"
      sha256 "222270602ea352bbe5a44d40cf63ad40c4313fd41793160aa18529a98cc0f025"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795680045-g9e093e/amp-linux-arm64"
      sha256 "619a8d5a6ea981d7b59a2f1029669ad48bc70958631aeafbb240d99072d424a9"
    else
      url "https://static.ampcode.com/cli/0.0.1795680045-g9e093e/amp-linux-x64"
      sha256 "509842ae371c45c9beb1c7b51c484028d258160cccb69ec1bb7b42740cf09706"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
