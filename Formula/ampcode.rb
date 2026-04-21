class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776788459-gfad969"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776788459-gfad969/amp-darwin-arm64"
      sha256 "b776eb3c58dec5d9802bba5103be3a0d575677adac51bbd577c49269b0c0e811"
    else
      url "https://static.ampcode.com/cli/0.0.1776788459-gfad969/amp-darwin-x64"
      sha256 "abe43761949d25f7814b8dc0d646cdb5e6c8ed27812ebfa4d28cc315b56d5fed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776788459-gfad969/amp-linux-arm64"
      sha256 "1ab4be2331034b5201880aa8f6646efa6f2f9baf78946d3718412c66fc86914e"
    else
      url "https://static.ampcode.com/cli/0.0.1776788459-gfad969/amp-linux-x64"
      sha256 "029d8ccc76ac8d04aa43e62d5fa31b0ae372d741e7e5b937d6e8e40094363d45"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
