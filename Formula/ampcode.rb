class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777784676-g60c948"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777784676-g60c948/amp-darwin-arm64"
      sha256 "0b612a3edefbdcc11a423a64d7eb064e33d493ffa8a494b8fb5e0bfa3ccf6274"
    else
      url "https://static.ampcode.com/cli/0.0.1777784676-g60c948/amp-darwin-x64"
      sha256 "8715e592cf117eee185d716f2304cf3e7eab614da13685abef7235fe96e474de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777784676-g60c948/amp-linux-arm64"
      sha256 "b8b328b32435e3e5e16f9ea91210fdf9e56209b9cc330bea7d227601ff12aa0d"
    else
      url "https://static.ampcode.com/cli/0.0.1777784676-g60c948/amp-linux-x64"
      sha256 "979f9a7dcc750d383cfbfa0613c698bf4cafffc9d6d949e9fb1d815ff440de2f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
