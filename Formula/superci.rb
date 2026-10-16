# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.11.tgz"
      sha256 "547f89bdbbc29ba1e9b005852d1992707329cafb7c8ac4022651bd221050d097"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.11.tgz"
      sha256 "1d80e21f7257f6ddb4c55dcd754fc194d560c3d4a6169147037bc1a37a68d68f"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.11.tgz"
      sha256 "d12c83781601d0b3098bec05f83a273401cc9859ed39bc9982a266b15c1a6864"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.11.tgz"
      sha256 "0fbc6a9a6efbff639dd404a3a6012f8264bdfab09c352703f58fb4dbc7b9fa3f"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
