class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793347237-gb47dfa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793347237-gb47dfa/amp-darwin-arm64"
      sha256 "8a1c6eb7d192d506d4242b689348236d24604c9ff77eb8ac8d643c187eef4d98"
    else
      url "https://static.ampcode.com/cli/0.0.1793347237-gb47dfa/amp-darwin-x64"
      sha256 "9a89f5fefbb2471d0e8583fb7e54db64081a3d988adca98dac895d8ea10f2ed1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793347237-gb47dfa/amp-linux-arm64"
      sha256 "7bac96a19c157bf29869dd24c4a999613698c3c58ef6d70514f78b19837b0f73"
    else
      url "https://static.ampcode.com/cli/0.0.1793347237-gb47dfa/amp-linux-x64"
      sha256 "614677812bfe4e4c660f411ee15f982f8b8c8d308db15a7da6c3b5930a550a1a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
