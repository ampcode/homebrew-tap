class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771302820-ga4c3d4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771302820-ga4c3d4/amp-darwin-arm64"
      sha256 "ac9b55c3ee33c333b47c7435c0a21c498a37a03318dc302b50ae210efcfc96e9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771302820-ga4c3d4/amp-darwin-x64"
      sha256 "5dfbc07ac3ad3316a95a2b1b037ba7e536a9dea8c23e9954fed57f73c586d049"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771302820-ga4c3d4/amp-linux-arm64"
      sha256 "bcb4a7c56911d3ff2b210e912515fe6aefccf4fc747335ec7c3d614dbd4109f0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771302820-ga4c3d4/amp-linux-x64"
      sha256 "f9764d3d841056821065b1404060beb7df698ff4a3c823a242f5b667bbe9ba33"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
