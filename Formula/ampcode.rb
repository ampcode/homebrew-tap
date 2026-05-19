class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779165026-g66aa16"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779165026-g66aa16/amp-darwin-arm64"
      sha256 "091eeed6f162dd0a15b2e17b0170d91f41ba42d72330fe6d9d67e5609a926122"
    else
      url "https://static.ampcode.com/cli/0.0.1779165026-g66aa16/amp-darwin-x64"
      sha256 "0a78a9399615ba47e13cdc92e51ca919bc51112de9d0de2f0b26dc7180005325"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779165026-g66aa16/amp-linux-arm64"
      sha256 "a535825cd0efbec626f7129e50e728080eab5dd155fa23eef33420ed4c2375c7"
    else
      url "https://static.ampcode.com/cli/0.0.1779165026-g66aa16/amp-linux-x64"
      sha256 "372db24bbc4e143b5ac34e2d4ddae76f57555c67664028f783f70767ffba2034"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
