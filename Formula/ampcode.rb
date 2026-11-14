class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794686429-g79beb3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794686429-g79beb3/amp-darwin-arm64"
      sha256 "c9adab4d866cc485718d35560d2d2951885b7ae9c1a563aa3127c861bb0b3ad8"
    else
      url "https://static.ampcode.com/cli/0.0.1794686429-g79beb3/amp-darwin-x64"
      sha256 "d46be942b85182e1e73c56406e52a679c8e1a2a0ea425a71d01d5ecdeeb002da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794686429-g79beb3/amp-linux-arm64"
      sha256 "46d71e51efee827f7c45c7e921b72addf28a1ea9eab8a4d7f4761ec75145f6d5"
    else
      url "https://static.ampcode.com/cli/0.0.1794686429-g79beb3/amp-linux-x64"
      sha256 "076c9b5f7a3075889fd25ce7801bae331eaac8795779565e85ce93d076acf740"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
