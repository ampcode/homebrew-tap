class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780577636-gf57c9d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780577636-gf57c9d/amp-darwin-arm64"
      sha256 "30a5db2b111268e0c9a60f1103031cb341653c78f7427d0d356bf4c5df00c2bb"
    else
      url "https://static.ampcode.com/cli/0.0.1780577636-gf57c9d/amp-darwin-x64"
      sha256 "468060c3f615c06e92a4deb64131bfff388470ee7a395abd7643db22edcae5f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780577636-gf57c9d/amp-linux-arm64"
      sha256 "8585459ea93c191a18c75298b9fadd71b7a1c7e4932d3745bae0b68c9124a1bf"
    else
      url "https://static.ampcode.com/cli/0.0.1780577636-gf57c9d/amp-linux-x64"
      sha256 "915d37a86965995ec958d0ca5dc82e67d48e1fd0dbeb9c7f5fb48efda1abc548"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
