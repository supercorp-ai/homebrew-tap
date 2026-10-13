# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.2.tgz"
      sha256 "02934e5aab445349ce810d9f8d42573f0a6ac496728110f64471616ee4294c3a"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.2.tgz"
      sha256 "a228ff7aeabe5bc73fa16d70bbd61402d8b660848f98addb7b9083a266121e24"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.2.tgz"
      sha256 "c2f708ae9c6a79c43b3d2eab94836e6d1d62a82d9feeb7109c33dddd75169a4f"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.2.tgz"
      sha256 "87a7dbb0b7788b349771235176ae36a51fa315046e2a2257ca0fcc1c0e716a34"
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
