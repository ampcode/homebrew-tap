class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787141003-gadcfc2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787141003-gadcfc2/amp-darwin-arm64"
      sha256 "093a5b465f5c033064f222da31282cbd092e0f1a586bb4667d80a49a9664cefc"
    else
      url "https://static.ampcode.com/cli/0.0.1787141003-gadcfc2/amp-darwin-x64"
      sha256 "28694e9f912b5f918e8f7bb934337d63e67bfedf72524f8c7ed2658e16d56444"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787141003-gadcfc2/amp-linux-arm64"
      sha256 "160814cb8523f14e2f7c19607ce6ee52113950e90ef185efd76a04366f8eaa0e"
    else
      url "https://static.ampcode.com/cli/0.0.1787141003-gadcfc2/amp-linux-x64"
      sha256 "f69baddf3d44a9505701045b43dc590bb2185fd2473003b15c307a18134445d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
