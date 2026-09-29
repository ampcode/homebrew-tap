class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790672760-g076f82"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790672760-g076f82/amp-darwin-arm64"
      sha256 "16c83e76a6d7b11e7291538302c916b5f08494ed73ce6b7c088f8bc1889b8853"
    else
      url "https://static.ampcode.com/cli/0.0.1790672760-g076f82/amp-darwin-x64"
      sha256 "80005aeda3f96850349631ccc730ae76f52126461c825146f8432783d886ca29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790672760-g076f82/amp-linux-arm64"
      sha256 "218f26442cd73db0e8898465c475e786d5efe5bd5f3aa41fc9d4debee76da70f"
    else
      url "https://static.ampcode.com/cli/0.0.1790672760-g076f82/amp-linux-x64"
      sha256 "6132762c61178459c9b3d96d0de940809c4634900531079400bf84321ee5f695"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
