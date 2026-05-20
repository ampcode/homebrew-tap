class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779313683-gf89f27"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779313683-gf89f27/amp-darwin-arm64"
      sha256 "7ffdb7e88a54f1565684c3c66f881531338aa7466c43cc935739090a86c6caeb"
    else
      url "https://static.ampcode.com/cli/0.0.1779313683-gf89f27/amp-darwin-x64"
      sha256 "75995edc7b43665c527c803b2be2cc96c4113071ae25fc4f0b7964abee32cd02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779313683-gf89f27/amp-linux-arm64"
      sha256 "0d82df77462ef033a0ac8f39673a7e9280c60e8aa3029ce6e0ae0b0b4bc163ab"
    else
      url "https://static.ampcode.com/cli/0.0.1779313683-gf89f27/amp-linux-x64"
      sha256 "d9ecffcb8c42378a3ce73b8793c0384499542a16a20da00cb20c8faf78341697"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
